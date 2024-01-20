import 'package:flutter/material.dart';
import 'package:flutter_application_1/add_phone.dart';
import 'package:flutter_application_1/change_password.dart';
import 'package:flutter_application_1/edit_info.dart';
import 'package:flutter_application_1/first_screen.dart';

class SettingsView extends StatefulWidget {
  const SettingsView({super.key});

  @override
  State<SettingsView> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<SettingsView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 236, 233, 233),
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          leading: IconButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const FirstScreen(),
                ));
              },
              icon: const Icon(Icons.arrow_back_ios_sharp)),
          title: const Text(
            'Settings',
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 115,
                width: 500,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Rahma Seliman',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      const Text('ra256864@gmail.com'),
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const EditView(),
                          ));
                        },
                        style: TextButton.styleFrom(
                            foregroundColor:
                                const Color.fromARGB(255, 31, 94, 201)),
                        child: const Text('Edit info'),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 250,
                width: 500,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Security Information',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const Text('Password'),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        '* * * * * * * * * * * * * * ',
                        style:
                            TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const PasswordView(),
                          ));
                        },
                        style: TextButton.styleFrom(
                            foregroundColor:
                                const Color.fromARGB(255, 31, 94, 201)),
                        child: const Text('Chnge Password'),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const PhoneView(),
                          ));
                        },
                        style: TextButton.styleFrom(
                            foregroundColor:
                                const Color.fromARGB(255, 31, 94, 201)),
                        child: const Text('Add Phone Number'),
                      ),
                      const Text(
                        'This phone number is your primary phone number and is unique across akram',
                        style: TextStyle(color: Colors.grey),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 115,
                width: 500,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Account Deletion',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                        'We are sad to see you go, but hope to see you again!',
                        style: TextStyle(color: Colors.grey),
                      ),
                      TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                            foregroundColor:
                                const Color.fromARGB(255, 208, 7, 7)),
                        child: const Text('Delete your account'),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
