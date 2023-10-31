// ignore_for_file: must_be_immutable, prefer_const_constructors, deprecated_member_use, avoid_print, unnecessary_const, sort_child_properties_last, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

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
        appBar: AppBar(
          title: const Text(_title),
          backgroundColor: const Color.fromARGB(255, 2, 13, 69),
        ),
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
  bool _obscureText = true;
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
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(10),
              child: Image.asset(
                'assets/logo.png',
                height: 100,
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
                    SizedBox(height: 5), // Spasi antara teks dan TextField
                    TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Masukkan Alamat Email', // Menggunakan hintText untuk teks yang muncul di dalam TextField
                        contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 10), // Padding untuk teks input
                      ),
                    ),
                  ],
                ),
              ),
            Container(
              
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextFormField(
                controller: passwordController,
                obscureText: _obscureText,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Masukkan Kata Sandi', // Menggunakan hintText untuk teks yang muncul di dalam TextFormField
                  suffixIcon: IconButton(
                    icon: Icon(
                      _obscureText ? Icons.visibility : Icons.visibility_off,
                    ),
                    onPressed: () {
                      setState(() {
                        _obscureText = !_obscureText;
                      });
                    },
                  ),
                ),
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
                        });
                      },
                    ),
                    Text(
                      'Ingat Saya',
                      style: TextStyle(color: const Color.fromARGB(255, 0, 0, 0)),
                      
                    ),
                  ],
                ),
                TextButton(
                  onPressed: () {
                    // forgot password screen
                  },
                  child: Text(
                    'Lupa kata sandi?',
                    style: TextStyle(color: const Color.fromARGB(255, 253, 17, 0)),
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
                    borderRadius: BorderRadius.circular(15), // Ganti nilai sesuai keinginan Anda
                  ),
                ),
                onPressed: () {
                  print(nameController.text);
                  print(passwordController.text);
                },
                child: const Text('Masuk'),
              ),
            ),

            Row(
              children: <Widget>[
                Text(
                  'Tidak memiliki akun?',
                  style: TextStyle(fontSize: 14, color: const Color.fromARGB(255, 145, 143, 139)),
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
                    style: TextStyle(fontSize: 14, color: const Color.fromARGB(255, 56, 53, 51)),
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
}

class RegisterPage extends StatelessWidget {
  bool _obscureText = true;
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
              title: Text('Peringatan'),
              content: Text('Anda yakin ingin kembali ke halaman login?'),
              actions: <Widget>[
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
            );
          },
        );
        return back;
      },
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 2, 13, 69),
          title: const Text('Register'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: ListView(
            children: <Widget>[
              Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: Image.asset(
                  'assets/logo.png',
                  height: 100,
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
                    SizedBox(height: 5), // Spasi antara teks dan TextField
                    TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Masukkan Alamat Email', // Menggunakan hintText untuk teks yang muncul di dalam TextField
                        contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 10), // Padding untuk teks input
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
                    SizedBox(height: 15), // Spasi antara teks dan TextField
                    Stack(
                      children: [
                        TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderSide: BorderSide(color: Color.fromARGB(255, 128, 117, 117)),
                            ),
                            hintText: 'Masukkan Nomor Telepon',
                            contentPadding: EdgeInsets.fromLTRB(50, 15, 10, 15),
                          ),
                        ),
                        Positioned(
                          left: 8,
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 5, vertical: 16),
                            decoration: BoxDecoration(
                              border: Border(
                                right: BorderSide(color: Color.fromARGB(255, 128, 117, 117)),
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
              
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextFormField(
                controller: passwordController,
                obscureText: _obscureText,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Masukkan Kata Sandi', // Menggunakan hintText untuk teks yang muncul di dalam TextFormField
                  suffixIcon: IconButton(
                    icon: Icon(
                      _obscureText ? Icons.visibility_off : Icons.visibility,
                    ),
                    onPressed: () {
                      setState(() {
                        _obscureText = !_obscureText;
                      });
                    },
                  ),
                ),
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
                    borderRadius: BorderRadius.circular(15), // Ganti nilai sesuai keinginan Anda
                  ),
                ),
                  onPressed: () {
                    // Aksi saat tombol daftar ditekan
                  },
                  child: const Text('Daftar'),
  
                ),
              ),
                          Row(
              children: <Widget>[
                Text(
                  'Sudah memiliki akun?',
                  style: TextStyle(fontSize: 14, color: const Color.fromARGB(255, 145, 143, 139)),
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
                    style: TextStyle(fontSize: 14, color: const Color.fromARGB(255, 56, 53, 51)),
                  ),
                ),
              ],
              mainAxisAlignment: MainAxisAlignment.center,
            ),
            ]
          ),
        ),
        ),
      );
  }
     
}

void setState(Null Function() param0) {
}