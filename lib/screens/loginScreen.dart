import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gect_hackathon/Widgets/customInput.dart';
import 'package:gect_hackathon/Widgets/primaryButton.dart';
import 'package:gect_hackathon/utilis/theme.dart';
import 'package:gect_hackathon/utilis/utilWidgets.dart';

class loginScreen extends StatelessWidget {
  const loginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TextEditingController name = new TextEditingController();
    TextEditingController email = TextEditingController();
    TextEditingController password = TextEditingController();
    // TextEditingController confirmPassword = new TextEditingController();

    return Scaffold(
        body: Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [colorPrimary, colorSecondary]),
      ),
      child: Column(
        children: [
          addVerticalSpace(300),
          CustomInput(
            hint: "ENTER YOUR EMAIL",
            icon: CupertinoIcons.mail,
            controller: email,
          ),
          CustomInput(
            hint: "ENTER YOUR PASSWORD",
            icon: CupertinoIcons.padlock,
            controller: password,
          ),
          addVerticalSpace(132),
          TextButton(
              onPressed: () => {},
              child: Container(
                width: 120,
                height: 40,
                decoration: const BoxDecoration(
                    color: colorPrimary,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                    )),
                alignment: Alignment.center,
                child: Text(
                  "LOGIN",
                  style: textThemeDefault.bodyText1,
                ),
              ))
        ],
      ),
    ));
  }
}
