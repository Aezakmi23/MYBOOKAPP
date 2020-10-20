import 'package:bookapp/widgets/rounded_button.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BeITSem4 extends StatelessWidget {
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
                      'https://mega.nz/folder/1k0niQJB#8FIc-MyI612sH2ZRdAaKpQ'),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .8,
                child: RoundedButton(
                  text: "Telecom Switching & Comp Network",
                  fontsize: 17,
                  press: () => _launchURL(
                      'https://mega.nz/folder/R50GlJAR#dbYFUrIRMnDcpkyjyoLfqA'),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .8,
                child: RoundedButton(
                  text: "Data Structure & Algorithm Analysis",
                  fontsize: 17,
                  press: () => _launchURL(
                      'https://mega.nz/folder/M50UURBD#a_6iRPJs-AGde2Tf8Wq1Og'),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .8,
                child: RoundedButton(
                  text: "Analog Electronics Circuits",
                  fontsize: 17,
                  press: () => _launchURL(
                      'https://mega.nz/folder/0xk2CZAZ#i7jen1WaO4V5cNDKPV0SrA'),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .8,
                child: RoundedButton(
                  text: "Obj Oriented Concept & Prog-ing (C++)",
                  fontsize: 17,
                  press: () => _launchURL(
                      'https://mega.nz/folder/J9tRDKIQ#rkFE9GhOjU5sNf58vLGvPQ'),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .8,
                child: RoundedButton(
                  text: "Computer Organization And Architecture",
                  fontsize: 17,
                  press: () => _launchURL(
                      'https://mega.nz/folder/N9tExBQA#gMsDsDqtqa0FfF7LJqFt1g'),
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
