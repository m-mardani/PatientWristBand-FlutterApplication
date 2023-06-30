import 'package:flutter/material.dart';
import 'package:scanqr/Widget/appbar_widget.dart';
import 'package:scanqr/Widget/profile_widget.dart';
import 'package:scanqr/Widget/text_widget.dart';
import 'package:scanqr/model/user.dart';
import 'package:scanqr/utils/user_preferences.dart';

class PreProfilePage extends StatefulWidget {
  const PreProfilePage({super.key});

  @override
  State<PreProfilePage> createState() => _PreProfilePageState();
}

class _PreProfilePageState extends State<PreProfilePage> {
  @override
  Widget build(BuildContext context) {
    final user = UserPreferences.myUser;
    return Scaffold(
      appBar: AppBar(
          leading: BackButton(
            color: Colors.black,
          ),
          title: const Text(
            "سوابق قبلی بالینی",
            style: TextStyle(fontFamily: 'Morvarid', color: Colors.black),
          )),
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
            height: 20,
          ),
          Center(
            child: PreDisease(user),
          ),
          const SizedBox(
            height: 8,
          ),
          Center(
            child: PreDrugTake(user),
          ),
          const SizedBox(
            height: 8,
          ),
          Center(
            child: PreHospitalRecords(user),
          ),
          const SizedBox(
            height: 8,
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

  Widget PreDisease(User user) => TextWidget(
        TextIn: user.Pre_disease,
        TextTop: 'بیماری هایی که داشته',
      );
  Widget PreDrugTake(User user) => TextWidget(
        TextIn: user.Pre_drugCare,
        TextTop: 'مصرف دارو ها',
      );
  Widget PreHospitalRecords(User user) => TextWidget(
        TextIn: user.Pre_HospitalRecords,
        TextTop: 'سوابق بستری و جراحی ها',
      );
}
