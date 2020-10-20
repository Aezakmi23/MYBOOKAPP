import 'package:bookapp/widgets/rounded_button.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BeEESem6 extends StatelessWidget {
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
                  text: "Power Sys Analysis",
                  fontsize: 17,
                  press: () => _launchURL(''),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .8,
                child: RoundedButton(
                  text: "Electrical Machine-III",
                  fontsize: 17,
                  press: () => _launchURL(
                      'https://mega.nz/folder/os8HBQwR#7-qoIKGF6H3SQH1ls__Uow'),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .8,
                child: RoundedButton(
                  text: "Power Electronics",
                  fontsize: 17,
                  press: () => _launchURL(
                      'https://mega.nz/folder/EptDkYqZ#sqGnej8Jnwi_AAeGZYwS8w'),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .8,
                child: RoundedButton(
                  text: "Instrumentation Techiques",
                  fontsize: 17,
                  press: () => _launchURL(
                      'https://mega.nz/folder/oglnjYZS#wndaZKcKTNQfyO1GVtkH-w'),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .8,
                child: RoundedButton(
                  text: "Principles Of Dig Signal Pro-ing",
                  fontsize: 17,
                  press: () => _launchURL(
                      'https://mega.nz/folder/Uo003Q4Y#kvseLldVH4rOqr9QCtT9EA'),
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
