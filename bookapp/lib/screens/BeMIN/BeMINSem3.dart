import 'package:bookapp/widgets/rounded_button.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BeMINSem3 extends StatelessWidget {
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
                  text: "Mech Of Solid & Fluid Mech",
                  fontsize: 17,
                  press: () => _launchURL(
                      'https://mega.nz/folder/Ylk3AAqJ#1QSm4OTyK6jkXUWI1fO4cg'),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .8,
                child: RoundedButton(
                  text: "Programming With C",
                  fontsize: 17,
                  press: () => _launchURL(
                      'https://mega.nz/folder/dk0wnJAK#yc3xScKvdQrOYxJAqZVMUg'),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .8,
                child: RoundedButton(
                  text: "Mining Geology-I",
                  fontsize: 17,
                  press: () => _launchURL(
                      'https://mega.nz/folder/4w8VCSTB#x74cedcQSW6hfn6LZx1p_A'),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .8,
                child: RoundedButton(
                  text: "Mine Surveying-I",
                  fontsize: 17,
                  press: () => _launchURL(
                      'https://mega.nz/folder/Fo0jTY4T#yhjB_n4CGfyKp4NthtNHCg'),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .8,
                child: RoundedButton(
                  text: "Mine Development",
                  fontsize: 17,
                  press: () => _launchURL(
                      'https://mega.nz/folder/g90R0A5C#vr8UlAV9fHVz2XcZdkZr_Q'),
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
