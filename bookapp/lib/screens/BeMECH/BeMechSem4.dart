import 'package:bookapp/widgets/rounded_button.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BeMechSem4 extends StatelessWidget {
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
                  text: "Fluid Mechanics",
                  fontsize: 17,
                  press: () => _launchURL(
                      'https://mega.nz/folder/kt80mRTS#iy27AnU9bFsxh4HhRDtllg'),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .8,
                child: RoundedButton(
                  text: "Mechanics Of Solids-II",
                  fontsize: 17,
                  press: () => _launchURL(
                      'https://mega.nz/folder/Eo0CAJba#h5TVx1UA9NWzxjNq38P3ew'),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .8,
                child: RoundedButton(
                  text: "Applied Thermodynamics",
                  fontsize: 17,
                  press: () => _launchURL(
                      'https://mega.nz/folder/0gl2iTJA#VPaYvk0iK7XOSM7qowt0Ig'),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .8,
                child: RoundedButton(
                  text: "Kinematics Of Machines",
                  fontsize: 17,
                  press: () => _launchURL(
                      'https://mega.nz/folder/s19QgRob#jniG60iHOvei9xticOHtqA'),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .8,
                child: RoundedButton(
                  text: "Numerical Analysis And Comp Prog",
                  fontsize: 17,
                  press: () => _launchURL(
                      'https://mega.nz/folder/ExlQjB6D#3B6iMcVI4YGIQcb-khqejQ'),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .8,
                child: RoundedButton(
                  text: "Manufacturing Science-I",
                  fontsize: 17,
                  press: () => _launchURL(
                      'https://mega.nz/folder/Yl8SVLaJ#j1tHyj55kjRjoakQcI1ntA'),
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
