import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'player_provider.dart';
import 'pet_page.dart';
import 'player_class.dart';

class PlayerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final player = Provider.of<PlayerProvider>(context);

    return Scaffold(
      appBar: AppBar(title: Text("Player Page")),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 200),
            SizedBox(width: 300, height: 30, child: Text("Player Name: ${player.name}")),
            SizedBox(width: 300, height: 30, child: Text("Class: ${player.playerClass}")),
            SizedBox(width: 300, height: 30, child: Text("Pet: ${player.pet}")),
            SizedBox(height: 50,),
            SizedBox(
              width: 300,
              child: ElevatedButton(
                child: Text("Pet Description"),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PetPage()),
                  );
                },
              ),
            ),
            SizedBox(height: 10,),
            SizedBox(
              width: 300,
              child: ElevatedButton(
                child: Text("Class Status"),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ClassPage()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
