import 'package:bookapp/widgets/rounded_button.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BeMechSem3 extends StatelessWidget {
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
                  text: "Machine Drawing",
                  fontsize: 17,
                  press: () => _launchURL(
                      'https://mega.nz/folder/598k1ZrA#okPKJ0-9-63NGYUR8ZWV4A'),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .8,
                child: RoundedButton(
                  text: "Material Science And Metallurgy",
                  fontsize: 17,
                  press: () => _launchURL(
                      'https://mega.nz/folder/Rp1mwJwQ#yp4g-z-wN872C_k7t2Wzrw'),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .8,
                child: RoundedButton(
                  text: "Mechanics Of solid-I",
                  fontsize: 17,
                  press: () => _launchURL(
                      'https://mega.nz/folder/d50GnZyD#ajTqTy65irYahJ75zsCROw'),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .8,
                child: RoundedButton(
                  text: "Engineering Thermodynamics",
                  fontsize: 17,
                  press: () => _launchURL(
                      'https://mega.nz/folder/lslgWZwT#2aQl5E0_7M1DkRIQou6_CA'),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .8,
                child: RoundedButton(
                  text: "Mechanical Measurements & Metrology",
                  fontsize: 17,
                  press: () => _launchURL(
                      'https://mega.nz/folder/k58SEbYS#ny2vH0CAA8E5B_WLDPrMgA'),
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
