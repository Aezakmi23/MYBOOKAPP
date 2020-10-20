import 'package:bookapp/widgets/rounded_button.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BeITSem5 extends StatelessWidget {
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
                  text: "Microprocessor & Interfaces",
                  fontsize: 17,
                  press: () => _launchURL(
                      'https://mega.nz/folder/oklQgLBI#eK_CknkwefeqgJs04KiuFQ'),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .8,
                child: RoundedButton(
                  text: "Principles of communication Systerm",
                  fontsize: 17,
                  press: () => _launchURL(
                      'https://mega.nz/folder/Jkk0XTRD#QSrkAg80_4UpDoRyPxv4Gg'),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .8,
                child: RoundedButton(
                  text: "Database Management System",
                  fontsize: 17,
                  press: () => _launchURL(
                      'https://mega.nz/folder/5ktHGY4Z#JJcQ1eM9duvAnB_dbXqYTw'),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .8,
                child: RoundedButton(
                  text: "Programming In Java",
                  fontsize: 17,
                  press: () => _launchURL(
                      'https://mega.nz/folder/ZosH0aQJ#qvwtdnlanE5tKdGMjc8FCw'),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .8,
                child: RoundedButton(
                  text: "Theory Of Computation",
                  fontsize: 17,
                  press: () => _launchURL(
                      'https://mega.nz/folder/xlsTVaBL#FjNc4u_d5E-Jd551Jr3U-A'),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .8,
                child: RoundedButton(
                  text: "Operating System",
                  fontsize: 17,
                  press: () => _launchURL(
                      'https://mega.nz/folder/pwkBCALQ#kzZV_X_cPHPLysfMiWP6WA'),
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
