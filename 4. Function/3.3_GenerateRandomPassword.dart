// Write a program in Dart that generates random password.

import 'dart:math';

void main() {
  int l = 12;
  String pw = generateRandomPassword(l);
  print("Generated Password: $pw");
}

String generateRandomPassword(int passwordlength) {
  const String chars = "!@#\$%^&*-+=_?ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";
  Random random = Random();
  String password = "";

  for (int i = 0; i < passwordlength; i++) {
    int randomIndex = random.nextInt(chars.length);
    password += chars[randomIndex];
  }

  return password;
}