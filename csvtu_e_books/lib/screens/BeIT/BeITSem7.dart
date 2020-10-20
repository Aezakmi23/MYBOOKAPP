import 'package:csvtu_e_books/widgets/rounded_button.dart';
import 'package:csvtu_e_books/widgets/rounded_buttons.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../main.dart';
import '../Help.dart';

class BeITSem7 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SEMESTER-7"),
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
              image: AssetImage("assets/Images/IT.jpg"),
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
                            "Help us grow to by sharing Notes/books pdf On Email.",
                        style: TextStyle(fontWeight: FontWeight.w300),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * .8,
                  child: RoundedButton(
                    text: "Data Mining & Warehousing",
                    fontsize: 17,
                    press: () => _launchURL(
                        'https://mega.nz/folder/FklCjYYI#-NKkgLd8l5c5MbCAhLASeQ'),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * .8,
                  child: RoundedButton(
                    text: "Managment Information System & IT",
                    fontsize: 17,
                    press: () => _launchURL(
                        'https://mega.nz/folder/dh1ElC4B#GRvJyno65KUtEjZId-ER1w'),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * .8,
                  child: RoundedButton(
                    text: "Artificial intelligence & Network Security",
                    fontsize: 17,
                    press: () => _launchURL(
                        'https://mega.nz/folder/s0kEBK6a#kkQbceY7GERrOh8kwOT_fw'),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * .8,
                  child: RoundedButton(
                    text: "Cryptography & Network Security",
                    fontsize: 17,
                    press: () => _launchURL(
                        'https://mega.nz/folder/V8lk3SBR#NUUqoZvZYbGKaJJTVu1kEg'),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * .8,
                  child: RoundedButton(
                    text: "Professional Elective-II",
                    fontsize: 17,
                    press: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return Help();
                          },
                        ),
                      );
                    },
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
