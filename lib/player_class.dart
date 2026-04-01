import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'player_provider.dart';

class ClassPage extends StatelessWidget {
  Map<String, int> getClassStats(String playerClass) {
    switch (playerClass) {
      case "Barbarian":
        return {"Attack": 90, "Defense": 70, "Speed": 40, "HP": 100};

      case "Cleric":
        return {"Attack": 40, "Defense": 70, "Speed": 60, "HP": 90};

      case "Knight":
        return {"Attack": 70, "Defense": 90, "Speed": 40, "HP": 100};

      case "Mage":
        return {"Attack": 95, "Defense": 40, "Speed": 60, "HP": 70};

      case "Ranger":
        return {"Attack": 70, "Defense": 40, "Speed": 90, "HP": 70};

      case "Rogue":
        return {"Attack": 75, "Defense": 35, "Speed": 95, "HP": 60};

      default:
        return {"Attack": 0, "Defense": 0, "Speed": 0, "HP": 0};
    }
  }

  @override
  Widget build(BuildContext context) {
    final player = Provider.of<PlayerProvider>(context);

    final stats = getClassStats(player.playerClass);

    Text("Attack: ${stats["Attack"]}");
    Text("Defense: ${stats["Defense"]}");
    Text("Speed: ${stats["Speed"]}");
    Text("HP: ${stats["HP"]}");

    return Scaffold(
      appBar: AppBar(title: Text("Class Stats Page")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 300,
              height: 35,
              child: Text("Class: ${player.playerClass}"),
            ),
            SizedBox(width: 300, child: Text("Status:")),
            SizedBox(width: 300, child: Text("Attack: ${stats["Attack"]}")),
            SizedBox(width: 300, child: Text("Defense: ${stats["Defense"]}")),
            SizedBox(width: 300, child: Text("Speed: ${stats["Speed"]}")),
            SizedBox(width: 300, child: Text("HP: ${stats["HP"]}")),
          ],
        ),
      ),
    );
  }
}
