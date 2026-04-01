import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'player_provider.dart';

class PetPage extends StatelessWidget {
  String getPetDescription(String pet) {
    switch (pet) {
      case "Dragon":
        return "A powerful and legendary creature that breathes fire. The Dragon grants immense strength and can deal massive damage to enemies.";

      case "Wolf":
        return "A loyal and swift companion. The Wolf enhances speed and helps track enemies with sharp instincts.";

      case "Cat":
        return "A small but clever pet. The Cat increases agility and helps avoid danger with quick reflexes.";

      case "Horse":
        return "A strong and reliable mount. The Horse boosts movement speed and allows fast travel across lands.";

      case "Lion":
        return "A fearless king of beasts. The Lion increases attack power and intimidates nearby enemies.";

      case "Turtle":
        return "A slow but highly durable companion. The Turtle provides strong defense and protection.";

      case "Snake":
        return "A silent and deadly pet. The Snake enhances stealth and can poison enemies over time.";

      default:
        return "Unknown pet.";
    }
  }

  @override
  Widget build(BuildContext context) {
    final player = Provider.of<PlayerProvider>(context);

    return Scaffold(
      appBar: AppBar(title: Text("Pet Page")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 300,
              height: 35,
              child: Text("Pet: ${player.pet}"),
            ),
            SizedBox(
              width: 300,
              child: Text("Description: ${getPetDescription(player.pet)}"),
            ),
          ],
        ),
      ),
    );
  }
}
