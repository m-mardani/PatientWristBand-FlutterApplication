import 'package:flutter/material.dart';
import 'package:scanqr/Widget/appbar_widget.dart';
import 'package:scanqr/Widget/profile_widget.dart';
import 'package:scanqr/Widget/text_widget.dart';
import 'package:scanqr/model/user.dart';
import 'package:scanqr/utils/user_preferences.dart';

class CurProfilePage extends StatefulWidget {
  const CurProfilePage({super.key});

  @override
  State<CurProfilePage> createState() => _CurProfilePageState();
}

class _CurProfilePageState extends State<CurProfilePage> {
  @override
  Widget build(BuildContext context) {
    final user = UserPreferences.myUser;
    return Scaffold(
      appBar: AppBar(
          leading: BackButton(
            color: Colors.black,
          ),
          title: const Text(
            "سوابق فعلی بالینی",
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
            child: CurTreatmentProcess(user),
          ),
          const SizedBox(
            height: 8,
          ),
          Center(
            child: CurSurgeries(user),
          ),
          const SizedBox(
            height: 8,
          ),
          Center(
            child: CurSpecificSymp(user),
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

  Widget CurTreatmentProcess(User user) => TextWidget(
        TextIn: user.Current_treatmentProces,
        TextTop: 'روند درمان',
      );
  Widget CurSurgeries(User user) => TextWidget(
        TextIn: user.Current_Surgeries,
        TextTop: 'جراحی ها و پروسیجر های انجام شده',
      );
  Widget CurSpecificSymp(User user) => TextWidget(
        TextIn: user.Current_Specific_Symtams,
        TextTop: 'علائم خاص مانند تعداد تشنج یا غیره',
      );
}
