import 'package:bookapp/widgets/rounded_button.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BeCivilSem3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SEMESTER-3"),
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
                  text: "Applied Mathematics-III",
                  fontsize: 17,
                  press: () => _launchURL(
                      'https://mega.nz/folder/o993hKYC#u7myFSTBC8F-sZSe0Rb0kg'),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .8,
                child: RoundedButton(
                  text: "Fluid Mechanics-I",
                  fontsize: 17,
                  press: () => _launchURL(
                      'https://mega.nz/folder/8stkGajI#-W3pe9JwguSoczU5iJHHaQ'),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .8,
                child: RoundedButton(
                  text: "Surveying-I",
                  fontsize: 17,
                  press: () => _launchURL(
                      'https://mega.nz/folder/xhlgUSrA#U1bMkU-cHeyF8rBDNmFYag'),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .8,
                child: RoundedButton(
                  text: "Mechanics Of Solids",
                  fontsize: 17,
                  press: () => _launchURL(
                      'https://mega.nz/folder/p40WBQDS#CctToa_JPFL2Be8gdFX1KA'),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .8,
                child: RoundedButton(
                  text: "Engineering Geology",
                  fontsize: 17,
                  press: () => _launchURL(
                      'https://mega.nz/folder/4l9wECYB#Kn_nYFYu4nborWqn-D2eRA'),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .8,
                child: RoundedButton(
                  text: "Building Materials",
                  fontsize: 17,
                  press: () => _launchURL(
                      'https://mega.nz/folder/ZgtQXK7T#wFmfkOfZcUA-EAB2426Ugw'),
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
