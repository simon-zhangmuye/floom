import 'package:floom/variables.dart';
import 'package:floom/videoconference/create_meeting.dart';
import 'package:floom/videoconference/join_meeting.dart';
import 'package:flutter/material.dart';

class ConferenceScreen extends StatefulWidget {
  @override
  _ConferenceScreenState createState() => _ConferenceScreenState();
}

class _ConferenceScreenState extends State<ConferenceScreen>
    with SingleTickerProviderStateMixin {
  TabController tabController;
  buildtab(String name) {
    return Container(
      width: 150,
      height: 50,
      child: Card(
        child: Center(
          child: Text(
            name,
            style: mystyle(16, Colors.black, FontWeight.w700),
          ),
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Foom',
          style: mystyle(20, Colors.white, FontWeight.w700),
        ),
        backgroundColor: Colors.lightBlue,
        centerTitle: true,
        bottom: TabBar(
          controller: tabController,
          tabs: [buildtab('Join Meeting'), buildtab('Create Meeting')],
        ),
      ),
      body: TabBarView(
        controller: tabController,
        children: [
          JoinMeeting(),
          CreateMeeting(),
        ],
      ),
    );
  }
}
