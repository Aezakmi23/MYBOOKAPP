import 'package:bookapp/widgets/rounded_button.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BeMechSem5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SEMESTER-5"),
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
                          "Your can help us grow by sharing Notes/books pdf On Email ",
                      style: TextStyle(fontWeight: FontWeight.w100),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .8,
                child: RoundedButton(
                  text: "Machine Design-I",
                  fontsize: 17,
                  press: () => _launchURL(
                      'https://mega.nz/folder/k19S0ZLQ#t0z-Bl43IRGzZchSenvDdQ'),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .8,
                child: RoundedButton(
                  text: "Turbo Machinery",
                  fontsize: 17,
                  press: () => _launchURL(
                      'https://mega.nz/folder/Mt0kyLSY#9FXhFcoBCND3ZZTgoVUzeg'),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .8,
                child: RoundedButton(
                  text: "Dynamics Of Machines",
                  fontsize: 17,
                  press: () => _launchURL(
                      'https://mega.nz/folder/Bok0lABY#Iv83Q1oagtMHd48Pc7Uuwg'),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .8,
                child: RoundedButton(
                  text: "Fluid Machinery",
                  fontsize: 17,
                  press: () => _launchURL(
                      'https://mega.nz/folder/Ik10gRaR#ED3JYAfu94tcZG-FhxrFOg'),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .8,
                child: RoundedButton(
                  text: "Manufacturing Science-II",
                  fontsize: 17,
                  press: () => _launchURL(
                      'https://mega.nz/folder/Vs8AGBqS#N5PHm6ao0oDlvz6aEVuyvg'),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .8,
                child: RoundedButton(
                  text: "Operations Research",
                  fontsize: 17,
                  press: () => _launchURL(
                      'https://mega.nz/folder/t19WiJaS#j6HESa6m_aRwDgeIsIhfUg'),
                ),
              ),
            ]),
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
