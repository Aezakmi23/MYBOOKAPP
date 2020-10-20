import 'package:csvtu_e_books/widgets/rounded_button.dart';
import 'package:csvtu_e_books/widgets/rounded_buttons.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../main.dart';

class BeEEESem5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SEMESTER-5"),
        actions: <Widget>[
          FlatButton(
            textColor: Colors.white,
            child: Icon(Icons.home),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return MyApp();
                  },
                ),
              );
            },
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/Images/EEE.jpg"),
              fit: BoxFit.fill,
            ),
          ),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text:
                            "Help us to grow by sharing Notes/books pdf On Email.",
                        style: TextStyle(fontWeight: FontWeight.w300),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * .8,
                  child: RoundedButton(
                    text: "Microprocessor And Peripherials",
                    fontsize: 17,
                    press: () => _launchURL(
                        'https://mega.nz/folder/pgdRxCxb#6U0BMQajCZql8dp_l9Hf4g'),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * .8,
                  child: RoundedButton(
                    text: "Integrated Circuits And Applications",
                    fontsize: 17,
                    press: () => _launchURL(
                        'https://mega.nz/folder/BgczFYyY#gYjv6GAwgnaJKDGeZhwxlQ'),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * .8,
                  child: RoundedButton(
                    text: "Linear Control System",
                    fontsize: 17,
                    press: () => _launchURL(
                        'https://mega.nz/folder/txVzxQqY#2rm9VcZvpaBytgKFVsDYfg'),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * .8,
                  child: RoundedButton(
                    text: "Signals And Systems",
                    fontsize: 17,
                    press: () => _launchURL(
                        'https://mega.nz/folder/hkMj2SKZ#q8WdHItrvOrzAAFEZ-2Zgg'),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * .8,
                  child: RoundedButton(
                    text: "Electrical Machines-II",
                    fontsize: 17,
                    press: () => _launchURL(
                        'https://mega.nz/folder/Btch1QiK#ubQGlqWMhMp_fsC8XGuGfQ'),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * .8,
                  child: RoundedButton(
                    text: "Communication System",
                    fontsize: 17,
                    press: () => _launchURL(
                        'https://mega.nz/folder/VsNVUYyJ#tqsLjx4PeL6lKjzChYWO-Q'),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * .8,
                  child: RoundedButtons(
                    text: "",
                    fontsize: 20,
                    press: () {},
                  ),
                ),
              ]),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.mail),
        onPressed: () => _launchURL(
          'mailto:spysunited4@gmail.com?subject=test%20subject&body=test%20body',
        ),
      ),
    );
  }

  Future<void> _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
