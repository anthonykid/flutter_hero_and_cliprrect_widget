import 'package:flutter/material.dart';
import 'package:flutter_hero_clipreact/SecondPage.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[50], //this is the background of the page
      appBar: AppBar( //this is the appbar
        backgroundColor: Colors.black, //this is the background color of the appbar
        title: Text(
          "Hero Animation", //this is text inside the appbar
          style: TextStyle(color: Colors.white), //this is the text color inside the appbar
        ),
      ),
      body: GestureDetector( //im using gesture detector so when the profile picture is pressed it move to another page having it animations
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) { //im using push so we can comeback to the this mainpage after going to the next page
            return SecondPage(); //next im returning the second page
          }));
        },
        child: Hero( //im using hero so my new page slides from the widget that we tap
          tag: 'profilepicture', //the tag is optional for the name. you can change it but make sure it is the same with the next page
          child: ClipRRect( //im using cliprrecyt for cutting the edge of a square picture to make it more goodlooking
            borderRadius:
                BorderRadius.circular(50), //to cut the rectangle sharp sides
            child: Container(
              width: 100, //the width of my picture
              height: 100, //the height of my picture
              child: Image( 
                fit: BoxFit.cover, //fit my picture inside the cover
                image: NetworkImage( //im using network image so i can take picture using URL
                    "https://i1.rgstatic.net/ii/profile.image/958432911835138-1605519621316_Q128/Anthony-Dicky-Rustan-2.jpg"),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
