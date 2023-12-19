// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:tiketku/constants/colors.dart';
import 'package:camera/camera.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'package:image_gallery_saver/image_gallery_saver.dart';

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
  late CameraController controller;
  XFile? capturedImage;

  Future initCamera(CameraDescription cameraDescription) async {
    controller = CameraController(cameraDescription, ResolutionPreset.high);
    try {
      await controller.initialize().then((_) {
        if (!mounted) return;
        setState(() {});
      });
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
    var camera = controller.value;
    final size = Size(361, 446);
    var scale = size.aspectRatio * camera.aspectRatio;
    if (scale < 1) scale = 1 / scale;
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
                      ? Image.file(
                          File(capturedImage!.path),
                          fit: BoxFit.cover,
                        )
                      : controller.value.isInitialized
                          ? AspectRatio(
                              aspectRatio: controller.value.aspectRatio,
                              child: Transform.scale(
                                  scale: scale,
                                  child:
                                      Center(child: CameraPreview(controller))),
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
                    });
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
