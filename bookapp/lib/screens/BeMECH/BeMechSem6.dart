import 'package:bookapp/widgets/rounded_button.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BeMechSem6 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SEMESTER-6"),
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
                  text: "Machine Design-II",
                  fontsize: 17,
                  press: () => _launchURL(
                      'https://mega.nz/folder/54szwAZI#9KoLSz2BKI_AekLScNDnEg'),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .8,
                child: RoundedButton(
                  text: "Energy Systems",
                  fontsize: 17,
                  press: () => _launchURL(
                      'https://mega.nz/folder/RhlE3RYa#QN1rybPsNnagzcpWEKZaiA'),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .8,
                child: RoundedButton(
                  text: "Internal Combustion Engines",
                  fontsize: 17,
                  press: () => _launchURL(
                      'https://mega.nz/folder/9okgxJJI#sy340fUd9DcQp1BI3G0Ocg'),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .8,
                child: RoundedButton(
                  text: "Heat And Mass Transfer ",
                  fontsize: 17,
                  press: () => _launchURL(
                      'https://mega.nz/folder/UwtwyJRL#ySD1uNbusXPukiyFr1IflQ'),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .8,
                child: RoundedButton(
                  text: "Production Management",
                  fontsize: 17,
                  press: () => _launchURL(
                      'https://mega.nz/folder/0ktEWbjR#OL68lT4oOAl-o2pejHMvLg'),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .8,
                child: RoundedButton(
                  text: "Professional Elective-I",
                  fontsize: 20,
                  press: () => _launchURL(''),
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
