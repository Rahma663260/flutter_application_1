import 'package:flutter/material.dart';
import 'package:flutter_application_1/setting_screen.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          title: const Text('Profile'),
          centerTitle: true,
          leading: IconButton(
              onPressed: () {}, icon: const Icon(Icons.arrow_back_ios)),
        ),
        body: Column(
          children: [
            const Center(
              child: SafeArea(
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/logo1.jpg'),
                  radius: 50,
                ),
              ),
            ),
            const Text('Welcom to AKRAM',
                style: TextStyle(
                    color: Colors.blueAccent,
                    fontSize: 20,
                    fontWeight: FontWeight.bold)),
            const SizedBox(
              height: 50,
            ),
            ListTile(
              leading: const Icon(
                Icons.settings_outlined,
                color: Colors.blueAccent,
              ),
              title: const Text(
                'Settings',
                style: TextStyle(
                    color: Colors.blueAccent,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              trailing: IconButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const SettingsView(),
                    ));
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => const SettingsView(),
                    ));
                  },
                  icon: const Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.blueAccent,
                  )),
            ),
            ListTile(
              leading: const Icon(
                Icons.history_outlined,
                color: Colors.blueAccent,
              ),
              title: const Text(
                'Donation History',
                style: TextStyle(
                    color: Colors.blueAccent,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              trailing: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.blueAccent,
                  )),
            ),
            ListTile(
              leading: const Icon(
                Icons.wallet_outlined,
                color: Colors.blueAccent,
              ),
              title: const Text(
                'Billing Details',
                style: TextStyle(
                    color: Colors.blueAccent,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              trailing: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.blueAccent,
                  )),
            ),
            ListTile(
              leading: const Icon(
                Icons.support_agent_outlined,
                color: Colors.blueAccent,
              ),
              title: const Text(
                'Support',
                style: TextStyle(
                    color: Colors.blueAccent,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              trailing: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.blueAccent,
                  )),
            ),
            ListTile(
              leading: const Icon(
                Icons.help_outline,
                color: Colors.blueAccent,
              ),
              title: const Text(
                'About US',
                style: TextStyle(
                    color: Colors.blueAccent,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              trailing: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.blueAccent,
                  )),
            ),
            ListTile(
              leading: const Icon(
                Icons.privacy_tip_outlined,
                color: Colors.blueAccent,
              ),
              title: const Text(
                'Privacy',
                style: TextStyle(
                    color: Colors.blueAccent,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              trailing: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.blueAccent,
                  )),
            ),
            ListTile(
              leading: const Icon(
                Icons.person_pin_circle_outlined,
                color: Colors.blueAccent,
              ),
              title: const Text(
                'Invite Friends',
                style: TextStyle(
                    color: Colors.blueAccent,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              trailing: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.blueAccent,
                  )),
            ),
            ListTile(
              leading: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.logout_outlined,
                    color: Colors.blueAccent,
                  )),
              title: const Text(
                'Logout',
                style: TextStyle(
                    color: Colors.redAccent,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
