import 'package:bookapp/widgets/rounded_button.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BeCivilSem8 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SEMESTER-8"),
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
                  text: "Structural Engineering Design-IV",
                  fontsize: 17,
                  press: () => _launchURL(
                      'https://mega.nz/folder/RgkyGCjJ#vx2Nisv_mfjDOK-m1OYJDw'),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .8,
                child: RoundedButton(
                  text: "Water Resources Engineering-II",
                  fontsize: 17,
                  press: () => _launchURL(
                      'https://mega.nz/folder/9xMBxSJB#y3z9i_kRnnQULHOEXU1-sw'),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .8,
                child: RoundedButton(
                  text: "Structural Analysis-III  ",
                  fontsize: 17,
                  press: () => _launchURL(
                      'https://mega.nz/folder/NldRQAgZ#GIXbpBeRzcDStGQYJRbT1A'),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .8,
                child: RoundedButton(
                  text: "Open Elective-IV",
                  fontsize: 17,
                  press: () => _launchURL(
                      'https://mega.nz/folder/E9lWEQaB#KtQzGJlRgMoNsZAmgPAZBQ'),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .8,
                child: RoundedButton(
                  text: "Professional Elective-III",
                  fontsize: 17,
                  press: () => _launchURL(
                      'https://mega.nz/folder/cskkyY4I#OlPM6TQUDlteIm0CTzYokA'),
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
