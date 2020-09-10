import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
import 'package:retrofit_api_test/core/components/character_card.dart';
import 'package:retrofit_api_test/stores/character_store.dart';

class CharactersPage extends StatefulWidget {
  @override
  _CharactersPageState createState() => _CharactersPageState();
}

class _CharactersPageState extends State<CharactersPage> {
  CharacterStore _store;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _store = Provider.of<CharacterStore>(context);
    _store.loadMore();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff181a1f),
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Rick and Morty Guide",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: Observer(builder: (context) {
        return (_store.chars.length < 1 && _store.loadingChars)
            ? Center(
                child: CircularProgressIndicator(),
              )
            : Container(
                child: ListView.builder(
                  itemCount: _store.chars.length,
                  itemBuilder: (context, index) {
                    print("$index e ${_store.chars.length}");
                    if ((index + 1) >= _store.chars.length) {
                      // _store.loadMore();
                      WidgetsBinding.instance.addPostFrameCallback((_) async {
                        await _store.loadMore();
                      });
                    }

                    if (_store.loadingChars)
                      return Center(child: CircularProgressIndicator());
                    else if ((_store.chars.length > 0))
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: CharacterCard(
                          character: _store.chars[index],
                        ),
                      );
                    else
                      return Container();
                  },
                ),
              );
      }),
    );
  }
}
