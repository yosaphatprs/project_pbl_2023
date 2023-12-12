import 'package:tiketku/models/Pemesan.dart';
import 'package:tiketku/models/Penumpang.dart';

class Pesanan {
  final String id;
  final String asal;
  final String tujuan;
  final DateTime tanggalBerangkat;
  final DateTime? tanggalPulang;
  final String? kelas;
  final int jumlahPenumpang;
  final Pemesan? pemesan;
  final List<Penumpang>? penumpang;
  final int totalHarga = 0;

  Pesanan({
    required this.id,
    required this.asal,
    required this.tujuan,
    required this.tanggalBerangkat,
    this.tanggalPulang,
    this.kelas,
    required this.jumlahPenumpang,
    this.pemesan,
    this.penumpang,
  });
}
