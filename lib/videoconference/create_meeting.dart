import 'package:floom/variables.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gradient_colors/flutter_gradient_colors.dart';
import 'package:uuid/uuid.dart';

class CreateMeeting extends StatefulWidget {
  CreateMeeting({Key key}) : super(key: key);

  @override
  _CreateMeetingState createState() => _CreateMeetingState();
}

class _CreateMeetingState extends State<CreateMeeting> {
  String code = '';
  createcode() {
    setState(() {
      code = Uuid().v1().substring(0, 6);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(top: 20),
              child: Text(
                'Create a code and share it with your friends',
                style: mystyle(20),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'Code: ',
                  style: mystyle(30),
                ),
                Text(
                  code,
                  style: mystyle(30, Colors.purple, FontWeight.w700),
                )
              ],
            ),
            SizedBox(
              height: 25,
            ),
            InkWell(
              onTap: () {
                createcode();
              },
              child: Container(
                width: MediaQuery.of(context).size.width / 2,
                height: 50,
                decoration: BoxDecoration(
                  gradient:
                      LinearGradient(colors: GradientColors.facebookMessenger),
                ),
                child: Center(
                  child: Text(
                    'Create Code',
                    style: mystyle(20, Colors.white),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
