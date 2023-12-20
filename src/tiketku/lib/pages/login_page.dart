// ignore_for_file: must_be_immutable, prefer_const_constructors, deprecated_member_use, avoid_print, unnecessary_const, sort_child_properties_last, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:tiketku/pages/home.dart';

void main() => runApp(const LoginPage());

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  static const String _title = 'tiketKu';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: Scaffold(
        body: MyStatefulWidget(),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  bool _obscureText = false;
  bool? rememberMe;
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            SizedBox(height: 50),
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(10),
              child: Column(children: [
                Image.asset(
                  'assets/logo.png',
                  height: 100,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Login Akun',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ]),
            ),
            SizedBox(height: 40),
            Container(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Alamat Email',
                    style: TextStyle(
                      color: Color.fromARGB(255, 255, 123, 0),
                      fontSize: 12,
                    ),
                  ),
                  SizedBox(height: 5),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Masukkan Alamat Email',
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 5),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Kata Sandi',
                    style: TextStyle(
                      color: Color.fromARGB(255, 255, 123, 0),
                      fontSize: 12,
                    ),
                  ),
                  SizedBox(height: 5),
                  TextFormField(
                    controller: passwordController,
                    obscureText: _obscureText,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Masukkan Kata Sandi',
                      suffixIcon: IconButton(
                        icon: Icon(
                          _obscureText
                              ? Icons.visibility
                              : Icons.visibility_off,
                        ),
                        onPressed: () {
                          setState(() {
                            _obscureText = !_obscureText;
                          });
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Checkbox(
                      value: rememberMe ?? false,
                      onChanged: (bool? value) {
                        setState(() {
                          rememberMe = value;
                          if (rememberMe == true) {
                            showAlert();
                          }
                        });
                      },
                    ),
                    Text(
                      'Ingat Saya',
                      style:
                          TextStyle(color: const Color.fromARGB(255, 0, 0, 0)),
                    ),
                  ],
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ForgotPasswordPage()),
                    );
                  },
                  child: Text(
                    'Lupa kata sandi?',
                    style: TextStyle(color: Color.fromARGB(255, 255, 0, 0)),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Container(
              height: 50,
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: const Color.fromARGB(255, 255, 102, 0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/');
                  print(nameController.text);
                  print(passwordController.text);
                  MaterialPageRoute(builder: (context) => HomePage());
                },
                child: const Text('Masuk'),
              ),
            ),
            Row(
              children: <Widget>[
                Text(
                  'Tidak memiliki akun?',
                  style: TextStyle(
                      fontSize: 14,
                      color: const Color.fromARGB(255, 145, 143, 139)),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => RegisterPage()),
                    );
                  },
                  child: const Text(
                    'Daftar sekarang',
                    style: TextStyle(
                        fontSize: 14,
                        color: const Color.fromARGB(255, 56, 53, 51)),
                  ),
                ),
              ],
              mainAxisAlignment: MainAxisAlignment.center,
            ),
          ],
        ),
      ),
    );
  }

  void showAlert() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Ingat Saya'),
          content: Text('Alert! Checkbox is checked.'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  }
    void saveUserData(String username, String password) {
    // Implementasi penyimpanan data pengguna
    print('Saving user data: Username: $username, Password: $password');
    // Lakukan penyimpanan ke penyimpanan lokal atau server sesuai kebutuhan
  }
}

class RegisterPage extends StatelessWidget {
  bool _obscureText = false;
  bool? rememberMe;
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        bool back = false;
        await showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(
                          'assets/tiketku.png',
                          height: 50,
                          width: 50,
                        ),
                      ),
                      Text(
                        'Peringatan!',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Text('Anda yakin ingin kembali ke halaman login?'),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        child: const Text('Tidak'),
                        onPressed: () {
                          back = false;
                          Navigator.of(context).pop();
                        },
                      ),
                      TextButton(
                        child: const Text('Ya'),
                        onPressed: () {
                          back = true;
                          Navigator.of(context).pop();
                        },
                      ),
                    ],
                  ),
                ],
              ),
            );
          },
        );
        return back;
      },
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: ListView(
            children: <Widget>[
              SizedBox(height: 50),
              Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    Image.asset(
                      'assets/logo.png',
                      height: 100,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Registrasi Akun',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 10),
                    Center(
                      child: Container(
                        width: 400,
                        child: Text(
                          'Pastikan alamat email dan nomor telepon anda valid. Email/nomor telepon yang anda masukkan digunakan untuk mengirimkan tautan verifikasi dan informasi yang terkait dengan pemesanan anda.',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                            color: const Color.fromARGB(255, 160, 160, 160),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Alamat Email',
                      style: TextStyle(
                        color: Color.fromARGB(255, 255, 123, 0),
                        fontSize: 12,
                      ),
                    ),
                    SizedBox(height: 5),
                    TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Masukkan Alamat Email',
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Nomor Telepon',
                      style: TextStyle(
                        color: Color.fromARGB(255, 255, 123, 0),
                        fontSize: 12,
                      ),
                    ),
                    SizedBox(height: 5),
                    Stack(
                      children: [
                        TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromARGB(255, 128, 117, 117)),
                            ),
                            hintText: 'Masukkan Nomor Telepon',
                            contentPadding: EdgeInsets.fromLTRB(50, 15, 10, 15),
                          ),
                        ),
                        Positioned(
                          left: 3,
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 9, vertical: 16),
                            decoration: BoxDecoration(
                              border: Border(
                                right: BorderSide(
                                    color: Color.fromARGB(255, 128, 117, 117)),
                              ),
                            ),
                            child: Text(
                              '+62',
                              style: TextStyle(
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 5),
              Container(
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Kata Sandi',
                      style: TextStyle(
                        color: Color.fromARGB(255, 255, 123, 0),
                        fontSize: 12,
                      ),
                    ),
                  SizedBox(height: 5),
                  TextFormField(
                    controller: passwordController,
                    obscureText: _obscureText,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Masukkan Kata Sandi',
                      suffixIcon: IconButton(
                        icon: Icon(
                          _obscureText
                              ? Icons.visibility
                              : Icons.visibility_off,
                        ),
                        onPressed: () {
                          setState(() {
                            _obscureText = !_obscureText;
                          });
                        },
                      ),
                    ),
                  ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Container(
                height: 50,
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: const Color.fromARGB(255, 255, 102, 0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginPage()),
                    );
                  },
                  child: const Text('Buat Akun'),
                ),
              ),
              SizedBox(height: 190),
              Row(
                children: <Widget>[
                  Text(
                    'Sudah memiliki akun?',
                    style: TextStyle(
                        fontSize: 14,
                        color: const Color.fromARGB(255, 145, 143, 139)),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginPage()),
                      );
                    },
                    child: const Text(
                      'Login',
                      style: TextStyle(
                          fontSize: 14,
                          color: const Color.fromARGB(255, 56, 53, 51)),
                    ),
                  ),
                ],
                mainAxisAlignment: MainAxisAlignment.center,
              ),
            ],
          ),
        ),
      ),
    );
  }

  void setState(Null Function() param0) {}
}

class ForgotPasswordPage extends StatelessWidget {
  TextEditingController newPasswordController = TextEditingController();
  TextEditingController repeatPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lupa Kata Sandi'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Kata Sandi Baru',
                    style: TextStyle(
                      color: Color.fromARGB(255, 255, 123, 0),
                      fontSize: 12,
                    ),
                  ),
                  SizedBox(height: 5),
                  TextFormField(
                    controller: newPasswordController,
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Masukkan Kata Sandi Baru',
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Ulangi Kata Sandi Baru',
                    style: TextStyle(
                      color: Color.fromARGB(255, 255, 123, 0),
                      fontSize: 12,
                    ),
                  ),
                  SizedBox(height: 5),
                  TextFormField(
                    controller: repeatPasswordController,
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Ulangi Kata Sandi Baru',
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Implementasi logika pengiriman tautan lupa kata sandi

                // Tampilkan alert
                showLoginAlert(context);
              },
              child: Text('Oke'),
            ),
          ],
        ),
      ),
    );
  }

  void showLoginAlert(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Login Kembali'),
          content: Text('Anda akan login kembali.'),
          actions: [
            TextButton(
              onPressed: () {
                // Route ke halaman login
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()),
                );
              },
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  }
}
