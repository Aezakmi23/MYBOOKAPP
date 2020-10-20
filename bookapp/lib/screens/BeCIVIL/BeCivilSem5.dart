import 'package:bookapp/widgets/rounded_button.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BeCivilSem5 extends StatelessWidget {
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
                  text: "Structural Engineering Design-I",
                  fontsize: 17,
                  press: () => _launchURL(
                      'https://mega.nz/folder/h51wSIRK#A5dQrq4O7oM-l8pRZEywKg'),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .8,
                child: RoundedButton(
                  text: "Geotech Engineering-I",
                  fontsize: 17,
                  press: () => _launchURL(
                      'https://mega.nz/folder/E59wHIyI#SvzYVXEH6bMEgF7LUMXGwA'),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .8,
                child: RoundedButton(
                  text: "Structural Analysis-II",
                  fontsize: 17,
                  press: () => _launchURL(
                      'https://mega.nz/folder/I000mYZS#zsCCAek_CGvaqc77trlLHQ'),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .8,
                child: RoundedButton(
                  text: "Numerical Methods & Computer Prog",
                  fontsize: 17,
                  press: () => _launchURL(
                      'https://mega.nz/folder/VwlQmAbQ#vHRO8Krc8zdHXbMZAlP0fQ'),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .8,
                child: RoundedButton(
                  text: "Transportation Engineering-II",
                  fontsize: 17,
                  press: () => _launchURL(
                      'https://mega.nz/folder/g59AFCzB#iXjNFSvXJd4UbPKiXj1IWQ'),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .8,
                child: RoundedButton(
                  text: "Engineering Hydrology",
                  fontsize: 17,
                  press: () => _launchURL(
                      'https://mega.nz/folder/sg0gmaAI#sMABWNWUnwin7QdYIA30YQ'),
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
