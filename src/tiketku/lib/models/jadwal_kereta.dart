import 'kereta.dart';

class JadwalKereta {
  final String id;
  final DateTime jadwalBerangkat;
  final DateTime jadwalTiba;
  final String asal;
  final String tujuan;
  final Kereta kereta;

  JadwalKereta({
    required this.id,
    required this.jadwalBerangkat,
    required this.jadwalTiba,
    required this.asal,
    required this.tujuan,
    required this.kereta,
  });
}
