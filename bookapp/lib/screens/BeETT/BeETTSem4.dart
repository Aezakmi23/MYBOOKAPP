import 'package:bookapp/widgets/rounded_button.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BeETTSem4 extends StatelessWidget {
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
                  text: "Numerical Analysis Using C",
                  fontsize: 17,
                  press: () => _launchURL(
                      'https://mega.nz/folder/o5cWDZDb#GWOWWBwE07Xrup844FBP-Q'),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .8,
                child: RoundedButton(
                  text: "Analog Communication",
                  fontsize: 17,
                  press: () => _launchURL(
                      'https://mega.nz/folder/VocAjb7Q#SYy-feH45JvPVssaUgAE-A'),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .8,
                child: RoundedButton(
                  text: "Analog Electronics",
                  fontsize: 17,
                  press: () => _launchURL(
                      'https://mega.nz/folder/MtVXQITK#fi7I9N5JgorNplZxKovMOg'),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .8,
                child: RoundedButton(
                  text: "Microprocessor And Interfaces",
                  fontsize: 17,
                  press: () => _launchURL(
                      'https://mega.nz/folder/59dEHLgY#wOM2QZdrKJUL79m1OPuS-A'),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .8,
                child: RoundedButton(
                  text: "Signal And System",
                  fontsize: 17,
                  press: () => _launchURL(
                      'https://mega.nz/folder/hkMj2SKZ#q8WdHItrvOrzAAFEZ-2Zgg'),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .8,
                child: RoundedButton(
                  text: "Electromag Fields & Transmission Lines",
                  fontsize: 17,
                  press: () => _launchURL(
                      'https://mega.nz/folder/cwVGDBSQ#mmhJpO1F2v3oTt_u14Wt3Q'),
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
