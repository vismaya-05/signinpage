import 'package:flutter/material.dart';

import 'package:signinpage/login_page/login_page.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Screen"),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              "welcome to Home Screen",
              style: TextStyle(color: const Color.fromARGB(255, 139, 176, 206)),
            ),
            Spacer(),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoginPage(),
                    ),
                    (route) => false,
                  );
                },
                child: Text("Logout"))
          ],
        ),
      ),
    );
  }
}
