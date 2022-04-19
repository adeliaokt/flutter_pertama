void main() async {
  func1();
//   await func4(50).then(
//     (value) {
//       print(value);
//       print("then");
//     },
//   ).catchError((error) {
//     print(error);
//     print("error");
//   });

  try {
    var value = await func4(100);
    print(value);
    print("try");
  } catch (error) {
    print(error);
    print("error");
  }

  func2();
  func3();
}

func1() {
  print("history 1");
}

func2() {
  print("history 2");
}

func3() {
  print("history 3");
}

Future<String> func4(int topup) {
  return Future.delayed(Duration(seconds: 3), () {
//    int topup;

    if (topup > 50.000) {
      return "Berhasil Top Up";
    } else {
      throw "Gagal Top Up";
    }
  });
}
