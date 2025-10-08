import 'dart:io';

// Fungsi async untuk input kata motivasi
Future<String> inputMotivasi() async {
  stdout.write('Masukkan kata motivasi Anda: ');
  return stdin.readLineSync() ?? '';
}

void main() async {
  // Data Diri
  stdout.write('Nama: ');
  String nama = stdin.readLineSync() ?? '';
  stdout.write('NIM: ');
  String nim = stdin.readLineSync() ?? '';
  stdout.write('Program Studi: ');
  String prodi = stdin.readLineSync() ?? '';

  // Input jumlah mata kuliah
  stdout.write('Jumlah mata kuliah yang diampu: ');
  int jumlahMatkul = int.tryParse(stdin.readLineSync() ?? '0') ?? 0;

  List<String> mataKuliah = [];
  List<String> harapanNilai = [];

  // Input nama mata kuliah dan harapan nilai
  for (int i = 0; i < jumlahMatkul; i++) {
    stdout.write('Nama Mata Kuliah ke-${i + 1}: ');
    String matkul = stdin.readLineSync() ?? '';
    mataKuliah.add(matkul);

    stdout.write('Harapan nilai untuk $matkul: ');
    String nilai = stdin.readLineSync() ?? '';
    harapanNilai.add(nilai);
  }

  // Input kata motivasi secara asynchronous
  String motivasi = await inputMotivasi();

  // Output Data
  print('\n=== Data Diri ===');
  print('Nama         : $nama');
  print('NIM          : $nim');
  print('Program Studi: $prodi');

  print('\n=== Mata Kuliah dan Harapan Nilai ===');
  for (int i = 0; i < mataKuliah.length; i++) {
    print('${i + 1}. ${mataKuliah[i]} - Harapan Nilai: ${harapanNilai[i]}');
  }

  print('\n=== Kata Motivasi ===');
  print(motivasi);
}