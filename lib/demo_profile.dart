import 'package:flutter/material.dart';
import 'package:scanqr/Widget/appbar_widget.dart';
import 'package:scanqr/Widget/profile_widget.dart';
import 'package:scanqr/Widget/text_widget.dart';
import 'package:scanqr/model/user.dart';
import 'package:scanqr/utils/user_preferences.dart';

class DemoProfilePage extends StatefulWidget {
  const DemoProfilePage({super.key});

  @override
  State<DemoProfilePage> createState() => _DemoProfilePageState();
}

class _DemoProfilePageState extends State<DemoProfilePage> {
  @override
  Widget build(BuildContext context) {
    final user = UserPreferences.myUser;
    return Scaffold(
      appBar: AppBar(
          leading: BackButton(
            color: Colors.black,
          ),
          title: const Text(
            "اطلاعات دموگرافی",
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
            height: 14,
          ),
          Center(
            child: DemoName(user),
          ),
          const SizedBox(
            height: 8,
          ),
          Center(
            child: DemoPostCode(user),
          ),
          const SizedBox(
            height: 8,
          ),
          Center(
            child: DemoNationalID(user),
          ),
          const SizedBox(
            height: 8,
          ),
          Center(
            child: DemoFatherName(user),
          ),
          const SizedBox(
            height: 8,
          ),
          Center(
            child: DemoBirthDay(user),
          ),
          const SizedBox(
            height: 8,
          ),
          Center(
            child: DemoAge(user),
          ),
          const SizedBox(
            height: 8,
          ),
          Center(
            child: DemoGender(user),
          ),
          const SizedBox(
            height: 8,
          ),
          Center(
            child: DemoHospitalAccept(user),
          ),
          const SizedBox(
            height: 8,
          ),
          Center(
            child: DemoPartAccept(user),
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

  Widget DemoName(User user) => TextWidget(
        TextIn: user.Demo_name,
        TextTop: 'نام و نام خانوادگی',
      );
  Widget DemoPostCode(User user) => TextWidget(
        TextIn: user.Demo_postcode,
        TextTop: 'شماره پرونده',
      );
  Widget DemoNationalID(User user) => TextWidget(
        TextIn: user.Demo_NationalID,
        TextTop: 'کد ملی',
      );

  Widget DemoFatherName(User user) => TextWidget(
        TextIn: user.Demo_FatherName,
        TextTop: 'نام پدر',
      );

  Widget DemoBirthDay(User user) => TextWidget(
        TextIn: user.Demo_BirthDay,
        TextTop: 'تاریخ تولد',
      );

  Widget DemoAge(User user) => TextWidget(
        TextIn: user.Demo_Age,
        TextTop: 'سن',
      );

  Widget DemoGender(User user) => TextWidget(
        TextIn: user.Demo_Gender,
        TextTop: 'جنسیت',
      );

  Widget DemoHospitalAccept(User user) => TextWidget(
        TextIn: user.Demo_HospitalAccept,
        TextTop: 'تاریخ پذیرش در بیمارستان',
      );

  Widget DemoPartAccept(User user) => TextWidget(
        TextIn: user.Demo_PartAccept,
        TextTop: 'تاریخ پذیرش در بخش',
      );
}
