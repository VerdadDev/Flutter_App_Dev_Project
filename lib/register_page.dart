import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'player_provider.dart';
import 'player_page.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController nameController = TextEditingController();

  String playerClass = "Barbarian";
  String pet = "Dragon";

  @override
  Widget build(BuildContext context) {
    final playerProvider = Provider.of<PlayerProvider>(context, listen: false);

    return Scaffold(
      appBar: AppBar(title: Text("Register Page")),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text("Enter Player Name"),
              SizedBox(height: 10),

              SizedBox(
                width: 300,
                child: TextField(
                  controller: nameController,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    hintText: "Enter Name",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                ),
              ),

              SizedBox(height: 30),

              Text("Choose your class"),
              SizedBox(height: 10),

              SizedBox(
                width: 300,
                child: DropdownButtonFormField<String>(
                  value: playerClass,
                  isExpanded: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                  items:
                      [
                            "Barbarian",
                            "Cleric",
                            "Knight",
                            "Mage",
                            "Ranger",
                            "Rogue",
                          ]
                          .map(
                            (c) => DropdownMenuItem(
                              value: c,
                              child: Center(child: Text(c)),
                            ),
                          )
                          .toList(),
                  onChanged: (value) {
                    setState(() {
                      playerClass = value!;
                    });
                  },
                ),
              ),

              SizedBox(height: 20),

              Text("Choose your pet"),
              SizedBox(height: 10),

              SizedBox(
                width: 300,
                child: DropdownButtonFormField<String>(
                  value: pet,
                  isExpanded: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                  items:
                      [
                            "Dragon",
                            "Wolf",
                            "Cat",
                            "Horse",
                            "Lion",
                            "Turtle",
                            "Snake",
                          ]
                          .map(
                            (p) => DropdownMenuItem(
                              value: p,
                              child: Center(child: Text(p)),
                            ),
                          )
                          .toList(),
                  onChanged: (value) {
                    setState(() {
                      pet = value!;
                    });
                  },
                ),
              ),

              SizedBox(height: 30),

              ElevatedButton(
                child: Text("Register"),
                onPressed: () {
                  playerProvider.setPlayer(
                    nameController.text,
                    playerClass,
                    pet,
                  );

                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PlayerPage()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
