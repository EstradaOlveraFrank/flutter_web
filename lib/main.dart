import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
        useMaterial3: true,
        textTheme: GoogleFonts.poppinsTextTheme(),
      ),
      home: Scaffold(
        backgroundColor: Colors.grey[100],
        body: Row(
          children: [
            Container(
              width: 250,
              color: Colors.teal[800],
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Text(
                      'Menu',
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  botton(Icons.folder_open, 'Projects', Colors.tealAccent, () {}),
                  botton(Icons.color_lens, 'Draft', Colors.amberAccent, () {}),
                  botton(Icons.people_alt, 'Shared with me', Colors.cyanAccent, () {}),
                  const Spacer(),
                  botton(Icons.settings_outlined, 'Settings', Colors.purpleAccent, () {}),
                  botton(Icons.person_add, 'Invite members', Colors.orangeAccent, () {}),
                  botton(Icons.create_new_folder, 'New Draft', Colors.greenAccent, () {}),
                  botton(Icons.workspace_premium, 'New Project', Colors.redAccent, () {}),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Side Hustle',
                          style: TextStyle(
                            fontSize: 35,
                            color: Colors.teal,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          children: [
                            Icon(Icons.share, color: Colors.teal),
                            const SizedBox(width: 10),
                            const Text('Share'),
                            const SizedBox(width: 20),
                            Icon(Icons.more_vert, color: Colors.teal),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Expanded(
                      child: GridView.builder(
                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          crossAxisSpacing: 20,
                          mainAxisSpacing: 20,
                        ),
                        itemCount: 6,
                        itemBuilder: (context, index) {
                          return nota();
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget nota() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.teal.withOpacity(0.2),
            blurRadius: 10,
            offset: const Offset(0, 6),
          ),
        ],
      ),
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                height: 15,
                width: 15,
                decoration: const BoxDecoration(
                  color: Colors.green,
                  shape: BoxShape.circle,
                ),
              ),
              const SizedBox(width: 10),
              const Text(
                'Title x',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.teal,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          const Expanded(
            child: Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla nec odio nec nisl sodales fermentum.',
              style: TextStyle(color: Colors.black87),
            ),
          ),
          const SizedBox(height: 10),
          Align(
            alignment: Alignment.centerRight,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.teal[50],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              child: Text(
                'Edit',
                style: TextStyle(color: Colors.teal[700]),
              ),
            ),
          ),
        ],
      ),
    );
  }

  InkWell botton(IconData icon, String text, Color iconColor, Function onPressed) {
    return InkWell(
      onTap: () {
        onPressed();
        print(text);
      },
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          children: [
            Icon(icon, color: iconColor),
            const SizedBox(width: 10),
            Text(
              text,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
