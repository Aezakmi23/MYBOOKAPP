import 'package:csvtu_e_books/widgets/rounded_button.dart';
import 'package:csvtu_e_books/widgets/rounded_buttons.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../main.dart';

class BeMINSem2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SEMESTER-2"),
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
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
                "assets/Images/c8cdd4ac-b3e8-4799-a27b-8978798eaf2f.jpg"),
            fit: BoxFit.fill,
          ),
        ),
        child: SingleChildScrollView(
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
                    text: "Applied Mathematics-II",
                    fontsize: 17,
                    press: () => _launchURL(
                        'https://mega.nz/folder/o993hKYC#u7myFSTBC8F-sZSe0Rb0kg'),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * .8,
                  child: RoundedButton(
                    text: "Enviroment And Ecology",
                    fontsize: 17,
                    press: () => _launchURL(
                        'https://mega.nz/folder/Y10AwIBR#YE8T6X3aMtTo4GxNcB1RiA'),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * .8,
                  child: RoundedButton(
                    text: "Basic Civil Engineering",
                    fontsize: 17,
                    press: () => _launchURL(
                        'https://mega.nz/folder/QssE2SoT#XZwmBK2n8ZX5tqOxFkF-Dw'),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * .8,
                  child: RoundedButton(
                    text: "Fundamental Of Mechanical Engineering",
                    fontsize: 17,
                    press: () => _launchURL(
                        'https://mega.nz/folder/RhlwEDjD#jFoKEtYx1LQjRLJuTTxVBg'),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * .8,
                  child: RoundedButton(
                    text: "Applied Physics",
                    fontsize: 17,
                    press: () => _launchURL(
                        'https://mega.nz/folder/851whIIZ#suG7ggloppQeiMbq5lbtOg'),
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
