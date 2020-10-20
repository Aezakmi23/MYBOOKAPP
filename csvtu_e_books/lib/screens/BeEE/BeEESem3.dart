import 'package:csvtu_e_books/widgets/rounded_button.dart';
import 'package:csvtu_e_books/widgets/rounded_buttons.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../main.dart';

class BeEESem3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SEMESTER-3"),
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
            image: AssetImage("assets/Images/Beach shores_1450.png"),
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
                      style: TextStyle(fontWeight: FontWeight.w100),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .8,
                child: RoundedButton(
                  text: "Applied Mathematics-III",
                  fontsize: 17,
                  press: () => _launchURL(
                      'https://mega.nz/folder/o993hKYC#u7myFSTBC8F-sZSe0Rb0kg'),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .8,
                child: RoundedButton(
                  text: "Electrical Machines-I",
                  fontsize: 17,
                  press: () => _launchURL(
                      'https://mega.nz/folder/s0NFxIRC#Z1FCbdVHCkunLdPccevXnQ'),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .8,
                child: RoundedButton(
                  text: "Basic Electronics",
                  fontsize: 17,
                  press: () => _launchURL(
                      'https://mega.nz/folder/sgNTVIrA#__Sr7TTj6XXjtSdf9z8AKg'),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .8,
                child: RoundedButton(
                  text: "Electric Circuits",
                  fontsize: 17,
                  press: () => _launchURL(
                      'https://mega.nz/folder/o4d1HIaT#Wgmw7PWL24zUadLiwkJDLA'),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .8,
                child: RoundedButton(
                  text: "Electrical Engg Materials",
                  fontsize: 17,
                  press: () => _launchURL(
                      'https://mega.nz/folder/ltkVCIzD#1JTR5Ke68EFU0UcXVD_aVA'),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .8,
                child: RoundedButton(
                  text: "Electrical Power Generator",
                  fontsize: 17,
                  press: () => _launchURL(
                      'https://mega.nz/folder/tt0XnKoA#w0D4WwkR8xMC9hyNFpJa6A'),
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
