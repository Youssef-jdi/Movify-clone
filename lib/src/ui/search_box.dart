import 'package:flutter/material.dart';
import 'package:movify_clone/src/ui/SearchResultUi/search_result.dart';

class SearchBox extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _SearchBoxState();
  }
}

class _SearchBoxState extends State<SearchBox> {
  final TextEditingController searchcontroller = TextEditingController();
  
  
  
  void _showDetails() {
    print(searchcontroller.text);
    Navigator.push(context,
     MaterialPageRoute(builder: (context) => SearchResult(search: searchcontroller.text,))
     );
  }

  @override
  Widget build(BuildContext context) {
    return new Container(
        width: double.infinity,
        height: 300,
        color: Colors.black12,
        child: new Stack(
          children: <Widget>[
            Positioned(
              top: 40,
              left: -50,
              child: new Container(
                width: 250,
                height: 250,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: new DecorationImage(
                        fit: BoxFit.fill,
                        image: new NetworkImage(
                            "https://image.tmdb.org/t/p/w185/rjbNpRMoVvqHmhmksbokcyCr7wn.jpg"
                        )
                    )
                ),
              ),
            ),
            Positioned(
                top: 130,
                left: 70,
                width: 300,
                child: new Theme(
                  data: new ThemeData(
                    primaryColor: Colors.white,
                  ),
                  child: new TextFormField(
                    maxLines: 1,
                    controller: searchcontroller,
                    decoration: new InputDecoration(
                      suffix: IconButton(
                        icon: Icon(Icons.search),
                        onPressed: () {
                          _showDetails();
                        },
                      ),
                      contentPadding: EdgeInsets.fromLTRB(10, 10, 20, 30),
                      labelText: "Search for movies",
                      labelStyle:
                          new TextStyle(color: Colors.white, fontSize: 18),
                      border: new OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(25),
                        borderSide: new BorderSide(),
                      ),
                      fillColor: Colors.white,
                    ),
                    keyboardType: TextInputType.text,
                    cursorColor: Colors.white,
                    style: new TextStyle(
                        fontFamily: "Poppins",
                        color: Colors.white,
                        fontSize: 18),
                  ),
                ))
          ],
        ));
  }
}
