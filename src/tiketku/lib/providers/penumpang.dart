// counter_provider.dart

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tiketku/models/penumpang.dart';

final penumpangProvider =
    StateProvider<Penumpang>((ref) => Penumpang(nik: '', nama: ''));
