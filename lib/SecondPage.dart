import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[50],//this is the background of the page
      appBar: AppBar(//this is the appbar
        backgroundColor: Colors.black,//this is the background color of the appbar
        title: Text(
          "Hero Animation",//this is text inside the appbar
          style: TextStyle(color: Colors.white), //this is the text color inside the appbar
        ),
      ),
      body: Center(
        child: Hero(//im using hero so my new page slides from the widget that we tap
          tag: 'profilepicture',//the tag is optional for the name. you can change it but make sure it is the same with the other page
          child: ClipRRect(//im using cliprrecyt for cutting the edge of a square picture to make it more goodlooking
            borderRadius:
                BorderRadius.circular(100), //to cut the rectangle sharp sides
            child: Container(
              width: 200, //the width of my picture
              height: 200,//the height of my picture
              child: Image(
                fit: BoxFit.cover,//fit my picture inside the cover
                image: NetworkImage(//im using network image so i can take picture using URL
                    "https://i1.rgstatic.net/ii/profile.image/958432911835138-1605519621316_Q128/Anthony-Dicky-Rustan-2.jpg"),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
