import 'dart:io';
import 'package:lista/q1.dart';
import 'package:lista/q2.dart';
import 'package:lista/q3.dart';
import 'package:lista/q4.dart';
import 'package:lista/q5.dart';
import 'package:lista/q6.dart';
import 'package:lista/q7.dart';
import 'package:lista/q8.dart';
import 'package:lista/q9.dart';
import 'package:lista/q10.dart';
import 'package:lista/q11.dart';
import 'package:lista/q12.dart';
import 'package:lista/q13.dart';
import 'package:lista/q14.dart';
import 'package:lista/q15.dart';
import 'package:lista/q16.dart';
import 'package:lista/q17.dart';
import 'package:lista/q18.dart';
import 'package:lista/q19.dart';
import 'package:lista/q20.dart';
import 'package:lista/q21.dart';
import 'package:lista/q22.dart';
import 'package:lista/q23.dart';
import 'package:lista/q24.dart';
import 'package:lista/q25.dart';
import 'package:lista/q26.dart';
import 'package:lista/q27.dart';
import 'package:lista/q28.dart';
import 'package:lista/q29.dart';
import 'package:lista/q30.dart';

void main(List<String> arguments) {
  int x;
  do {
    do {
      stdout.write(
          "escolha uma das questões ou digite zero para fechar o programa(1-30):");
      x = int.parse(stdin.readLineSync()!);
    } while (x < 0 || x > 30);
    switch (x) {
      case 1:
        q1();
        break;
      case 2:
        q2();
        break;
      case 3:
        q3();
        break;
      case 4:
        q4();
        break;
      case 5:
        q5();
        break;
      case 6:
        q6();
        break;
      case 7:
        q7();
        break;
      case 8:
        q8();
        break;
      case 9:
        q9();
        break;
      case 10:
        q10();
        break;
      case 11:
        q11();
        break;
      case 12:
        q12();
        break;
      case 13:
        q13();
        break;
      case 14:
        q14();
        break;
      case 15:
        q15();
        break;
      case 16:
        q16();
        break;
      case 17:
        q17();
        break;
      case 18:
        q18();
        break;
      case 19:
        q19();
        break;
      case 20:
        q20();
        break;
      case 21:
        q21();
        break;
      case 22:
        q22();
        break;
      case 23:
        q23();
        break;
      case 24:
        q24();
        break;
      case 25:
        q25();
        break;
      case 26:
        q26();
        break;
      case 27:
        q27();
        break;
      case 28:
        q28();
        break;
      case 29:
        q29();
        break;
      case 30:
        q30();
        break;
    }
  } while (x != 0);
  print("Fechando o programa...");
}
