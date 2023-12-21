// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:typed_data';
import 'package:image/image.dart' as img;

import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:tiketku/constants/colors.dart';
import 'package:camera/camera.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'package:image_gallery_saver/image_gallery_saver.dart';
import 'package:tiketku/constants/custom_clipper_scan.dart';
import 'package:tiketku/ml.dart';
import 'package:tiketku/pages/detail_transaksi.dart';
import 'package:tiketku/pages/test_result_ocr.dart';

late List<CameraDescription> _cameras;

class ScanKTP extends StatefulWidget {
  const ScanKTP({
    super.key,
    required this.camera,
  });

  final List<CameraDescription>? camera;

  @override
  State<ScanKTP> createState() => _ScanKTPState();
}

class _ScanKTPState extends State<ScanKTP> {
  bool isProcessing = false;
  late CameraController controller;
  XFile? capturedImage;

  Future initCamera(CameraDescription cameraDescription) async {
    controller = CameraController(cameraDescription, ResolutionPreset.high);
    try {
      await controller.initialize().then((_) {
        if (!mounted) return;
        setState(() {});
      });
      await controller.setFlashMode(FlashMode.off);
    } on CameraException catch (e) {
      debugPrint("camera error $e");
    }
  }

  @override
  void initState() {
    super.initState();
    // initialize the rear camera
    initCamera(widget.camera![0]);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var scale = 1.0;
    if (controller.value.isInitialized) {
      var camera = controller.value;
      final size = Size(361, 446);
      scale = size.aspectRatio * camera.aspectRatio;
      if (scale < 1) scale = 1 / scale;
    } else {
      final size = Size(361, 446);
      scale = size.aspectRatio * 1;
      if (scale < 1) scale = 1 / scale;
    }
    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.transparent,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        toolbarHeight: 49,
        title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/jadwal_kereta');
                  },
                  icon: const Icon(
                    Icons.arrow_back,
                    color: AppColor.primaryColor,
                    size: 24,
                  )),
              const Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Foto KTP",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ]),
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 36,
            ),
            Center(
              child: Text(
                "Foto Bagian Depan E-KTP",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Column(
              children: [
                Text("Mohon untuk mengambil foto dengan"),
                Text("pencahayaan yang baik dan jelas"),
              ],
            ),
            SizedBox(
              height: 24,
            ),
            SizedBox(
              width: 361,
              height: 446,
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: ClipRRect(
                  child: capturedImage != null
                      ? isProcessing
                          ? Center(
                              child: CircularProgressIndicator(),
                            )
                          : Image.file(
                              File(capturedImage!.path),
                              fit: BoxFit.cover,
                            )
                      : controller.value.isInitialized
                          ? Stack(
                              fit: StackFit.expand,
                              children: [
                                AspectRatio(
                                  aspectRatio: controller.value.aspectRatio,
                                  child: Transform.scale(
                                      scale: scale,
                                      child: Center(
                                          child: CameraPreview(controller))),
                                ),
                                Positioned(
                                  top: 112,
                                  bottom: 112,
                                  left: 10,
                                  right: 10,
                                  child: Container(
                                    padding: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                      color: Colors.black.withOpacity(0.5),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: ClipPath(
                                      clipper: NIKClipper(),
                                      child: Container(
                                          decoration: BoxDecoration(
                                        color: Colors.white.withOpacity(0.2),
                                        border: Border.all(
                                          color: Colors.white,
                                          width: 1,
                                        ),
                                        borderRadius: BorderRadius.circular(8),
                                      )),
                                    ),
                                  ),
                                ),
                              ],
                            )
                          : Container(),
                ),
              ),
            ),
            SizedBox(
              height: 24,
            ),
            ElevatedButton(
              style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(96.0),
                  ),
                ),
                padding: MaterialStateProperty.all(
                  EdgeInsets.symmetric(horizontal: 32, vertical: 32),
                ),
                backgroundColor:
                    MaterialStateProperty.all(AppColor.primaryColor),
              ),
              onPressed: () async {
                if (controller.value.isInitialized) {
                  try {
                    final XFile picture = await controller.takePicture();
                    setState(() {
                      capturedImage = picture;
                      isProcessing = true;
                    });
                    final image = File(picture.path);
                    Uint8List bytes = await image.readAsBytes();
                    img.Image? imageToCrop =
                        img.decodeImage(Uint8List.fromList(bytes));

                    if (imageToCrop != null) {
                      img.Image croppedImage = img.copyCrop(imageToCrop,
                          x: 180, y: 485, width: 350, height: 70);

                      Directory tempDir = await getTemporaryDirectory();
                      File croppedImageFile =
                          File('${tempDir.path}/cropped_image.jpg');
                      await croppedImageFile
                          .writeAsBytes(img.encodeJpg(croppedImage));

                      MLHelper helper = MLHelper();
                      helper.textFromImage(croppedImageFile).then((result) {
                        setState(() {
                          isProcessing = false;
                        });
                        croppedImageFile.delete();
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DetailTransaksi(
                                      result: result,
                                    )));
                      });
                      print('Image cropped and OCR');
                    } else {
                      print('Failed to decode the image.');
                    }

                    await ImageGallerySaver.saveFile(picture.path);
                    debugPrint("Picture saved to: ${picture.path}");
                  } catch (e) {
                    debugPrint("Error taking picture: $e");
                  }
                }
              },
              child: Icon(
                Icons.camera_alt,
                size: 32,
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}
