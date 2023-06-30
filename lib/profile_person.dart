import 'package:flutter/material.dart';
import 'package:scanqr/Widget/appbar_widget.dart';
import 'package:scanqr/Widget/button_widget.dart';
import 'package:scanqr/Widget/profile_widget.dart';
import 'package:scanqr/cli_profile.dart';
import 'package:scanqr/current_profile.dart';
import 'package:scanqr/demo_profile.dart';
import 'package:scanqr/model/user.dart';
import 'package:scanqr/pre_profile.dart';
import 'package:scanqr/utils/user_preferences.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    final user = UserPreferences.myUser;
    return Scaffold(
      appBar: buildAppBar(context),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          const SizedBox(
            height: 30,
          ),
          ProfileWidget(imagepath: user.Demo_imagPath),
          const SizedBox(
            height: 40,
          ),
          buildName(user),
          const SizedBox(
            height: 30,
          ),
          Container(
            padding: EdgeInsets.only(left: 15, right: 15),
            child: Divider(
              color: Colors.grey,
              thickness: 2,
              height: 20,
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Container(
            child: buildDemoGraphicInfobtn(),
            padding: EdgeInsets.fromLTRB(50, 0, 50, 0),
          ),
          const SizedBox(
            height: 23,
          ),
          Container(
            child: ClinicalInfobtn(),
            padding: EdgeInsets.fromLTRB(50, 0, 50, 0),
          ),
          const SizedBox(
            height: 23,
          ),
          Container(
            child: PreClinicalInfobtn(),
            padding: EdgeInsets.fromLTRB(50, 0, 50, 0),
          ),
          const SizedBox(
            height: 23,
          ),
          Container(
            child: CurrentClinicalInfobtn(),
            padding: EdgeInsets.fromLTRB(50, 0, 50, 0),
          ),
        ],
      ),
    );
  }

  Widget buildName(User user) => Column(
        children: [
          Text(
            user.Demo_name,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
          ),
          const SizedBox(
            height: 9,
          ),
          Text(
            user.Demo_postcode,
            style: TextStyle(color: Colors.grey, fontSize: 15),
          )
        ],
      );

  Widget buildDemoGraphicInfobtn() => ButtonWidget(
        text: 'demographic information',
        onClick: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const DemoProfilePage()),
          );
        },
      );

  Widget ClinicalInfobtn() => ButtonWidget(
        text: 'Clinical information',
        onClick: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const CliProfilePage()),
          );
        },
      );

  Widget PreClinicalInfobtn() => ButtonWidget(
        text: 'Previous clinical records',
        onClick: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const PreProfilePage()),
          );
        },
      );

  Widget CurrentClinicalInfobtn() => ButtonWidget(
        text: 'Current clinical records',
        onClick: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const CurProfilePage()),
          );
        },
      );
}
