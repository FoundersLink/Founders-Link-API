import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_floating_search_bar/material_floating_search_bar.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final List<String> list = List.generate(10, (index) => "Text $index");

  @override
  @override
  Widget build(BuildContext context) {
    return Container(
      child: searchBarUI(),
    );
  }

  Widget searchBarUI() {
    return Container(
      padding: const EdgeInsets.only(top: 130),

      // margin: EdgeInsets.only(top: 50),
      child: FloatingSearchBar(
        hint: 'Search Chat Groups...',
        height: 50,
        hintStyle: GoogleFonts.poppins(color: Color(0xffB8B8B8), fontSize: 15),
        openAxisAlignment: 0.0,
        maxWidth: 380,
        axisAlignment: 0.0,
        scrollPadding: EdgeInsets.only(top: 16, bottom: 20),
        elevation: 4.0,
        physics: BouncingScrollPhysics(),
        onQueryChanged: (query) {
          //Your methods will be here
        },
        transitionCurve: Curves.easeInOut,
        transitionDuration: Duration(milliseconds: 500),
        transition: CircularFloatingSearchBarTransition(),
        debounceDelay: Duration(milliseconds: 500),
        actions: [
          FloatingSearchBarAction(
            showIfOpened: false,
            child: InkWell(
              child: Image.asset("assets/images/slider.png"),
              onTap: () {
                // Navigator.push(context,
                //     MaterialPageRoute(builder: (context) => MapLocation()));
              },
            ),
          ),
          FloatingSearchBarAction.searchToClear(
            showIfClosed: false,
          ),
        ],
        builder: (context, transition) {
          return ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Material(
              color: Colors.white,
              child: Container(
                height: 200.0,
                child: Column(
                  children: [
                    ListTile(
                      title: Text(
                        'group A',
                      ),
                      subtitle: Text(
                        'group B',
                      ),
                      leading: Icon(Icons.access_time, color: Colors.grey),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
