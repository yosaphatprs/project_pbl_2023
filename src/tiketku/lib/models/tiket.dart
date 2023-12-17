import 'package:tiketku/models/Pemesan.dart';
import 'package:tiketku/models/Penumpang.dart';
import 'package:tiketku/models/gerbong_kereta.dart';
import 'package:tiketku/models/jadwal_kereta.dart';

class Tiket {
  final String id;
  final String nama;
  final JadwalKereta jadwalKereta;
  final GerbongKereta gerbongKereta;
  final Penumpang penumpang;
  final Pemesan pemesan;

  Tiket({
    required this.id,
    required this.nama,
    required this.jadwalKereta,
    required this.gerbongKereta,
    required this.penumpang,
    required this.pemesan,
  });
}
