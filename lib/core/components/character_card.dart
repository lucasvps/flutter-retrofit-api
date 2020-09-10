import 'package:flutter/material.dart';
import 'package:retrofit_api_test/models/character_model.dart';

class CharacterCard extends StatelessWidget {
  final Character character;

  const CharacterCard({Key key, this.character}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0xff202329),
      // elevation: 20,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            // width: 200,
            height: 175,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.network(
                character.image,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 8),
            height: 180,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                    // padding: EdgeInsets.only(right: 80),
                    width: 150,
                    child: customText(character.name)),
                Container(
                    // padding: EdgeInsets.only(right: 80),
                    width: 150,
                    child: customText(character.gender)),
                Container(
                  // padding: EdgeInsets.only(right: 80),
                  width: 150,
                  child: customText(character.species),
                ),
                Row(
                  children: [
                    CircleAvatar(
                      maxRadius: 5,
                      backgroundColor: character.status == "Alive"
                          ? Colors.blue
                          : character.status == "unknown"
                              ? Colors.orange
                              : Colors.red,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    customText(character.status)
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget customText(String text) {
    return Text(
      text,
      style: TextStyle(color: Colors.white, fontSize: 16),
    );
  }
}
