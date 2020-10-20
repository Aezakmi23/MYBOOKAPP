import 'package:csvtu_e_books/widgets/rounded_button.dart';
import 'package:csvtu_e_books/widgets/rounded_buttons.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../main.dart';

class BeETTSem5 extends StatelessWidget {
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
              image: AssetImage(
                  "assets/Images/f898f95b-589a-41b7-bb02-517dfa353335.jpg"),
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
                    text: "Linear Integrated Circuits",
                    fontsize: 17,
                    press: () => _launchURL(
                        'https://mega.nz/folder/xhdVwCbQ#RGbRxR7rk0JG_0Ab_w3dCg'),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * .8,
                  child: RoundedButton(
                    text: "Data Structure & Prog-ing With C++",
                    fontsize: 17,
                    press: () => _launchURL(
                        'https://mega.nz/folder/1oczwYZA#mPHUDyAlEmMU4Z52h816qQ'),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * .8,
                  child: RoundedButton(
                    text: "Antennas And Waves Propagation",
                    fontsize: 17,
                    press: () => _launchURL(
                        'https://mega.nz/folder/N9MgTTIJ#DTC4jMKMyacLmrThf9fI3w'),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * .8,
                  child: RoundedButton(
                    text: "Digital Communications",
                    fontsize: 17,
                    press: () => _launchURL(
                        'https://mega.nz/folder/okFRACSR#cLaVqlWM_ZrRmhTJaDNMXA'),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * .8,
                  child: RoundedButton(
                    text: "Adv Microprocessor & Interfaceing",
                    fontsize: 17,
                    press: () => _launchURL(
                        'https://mega.nz/folder/RscgyBiC#JQhO8P_4U4rye_cscbNfrg'),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * .8,
                  child: RoundedButton(
                    text: "Automatic Control System",
                    fontsize: 17,
                    press: () => _launchURL(
                        'https://mega.nz/folder/E4E3wKKD#dBA-FZMzxUWRQcB90YwVLQ'),
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
