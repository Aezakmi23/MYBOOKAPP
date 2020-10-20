import 'package:bookapp/widgets/rounded_button.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BeCSESem4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SEMESTER-4"),
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
                  text: "Computational Mathematics",
                  fontsize: 17,
                  press: () => _launchURL(
                      'https://mega.nz/folder/g41gSKiS#Mr0vOf-IWQI6YVyUF-zN8w'),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .8,
                child: RoundedButton(
                  text: "Discrete Structure",
                  fontsize: 17,
                  press: () => _launchURL(
                      'https://mega.nz/folder/Nh8izYAC#VyTFad-mJctkGOW3SNbZWA'),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .8,
                child: RoundedButton(
                  text: "Data Structures",
                  fontsize: 17,
                  press: () => _launchURL(
                      'https://mega.nz/folder/dp0wGSKQ#1_U0ryAc0khSe3-aX4N-3g'),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .8,
                child: RoundedButton(
                  text: "Computer Systerms Architecture",
                  fontsize: 17,
                  press: () => _launchURL(
                      'https://mega.nz/folder/h1sUSYwQ#DmciwETntbOcyMbnxNCqDA'),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .8,
                child: RoundedButton(
                  text: "Object Oriented & Pro-ing Using C++",
                  fontsize: 17,
                  press: () => _launchURL(
                      'https://mega.nz/folder/Fx1SBQYD#X2a0F-WY-092Lh4FGts_Pw'),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .8,
                child: RoundedButton(
                  text: "Operating Systerm",
                  fontsize: 17,
                  press: () => _launchURL(
                      'https://mega.nz/folder/Mh1GVaKS#agE5N7lDO5nuTuGK4OngeQ'),
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
