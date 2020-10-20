import 'package:csvtu_e_books/widgets/rounded_button.dart';
import 'package:csvtu_e_books/widgets/rounded_buttons.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../main.dart';
import '../Help.dart';

class BeMINSem6 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SEMESTER-6"),
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
              image: AssetImage(
                  "assets/Images/c8cdd4ac-b3e8-4799-a27b-8978798eaf2f.jpg"),
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
                    text: "Blasting Mining",
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
                  child: RoundedButton(
                    text: "Mine Health And Safety",
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
                  child: RoundedButton(
                    text: "Mine Machinery-II",
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
                  child: RoundedButton(
                    text: "Mine Ligislation-II",
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
                  child: RoundedButton(
                    text: "Mineral Dressing",
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
                  child: RoundedButton(
                    text: "Professional Elective-I",
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
