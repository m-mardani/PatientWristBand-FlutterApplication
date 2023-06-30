import 'package:flutter/material.dart';
import 'package:scanqr/Widget/appbar_widget.dart';
import 'package:scanqr/Widget/profile_widget.dart';
import 'package:scanqr/Widget/text_widget.dart';
import 'package:scanqr/model/user.dart';
import 'package:scanqr/utils/user_preferences.dart';

class CliProfilePage extends StatefulWidget {
  const CliProfilePage({super.key});

  @override
  State<CliProfilePage> createState() => _CliProfilePageState();
}

class _CliProfilePageState extends State<CliProfilePage> {
  @override
  Widget build(BuildContext context) {
    final user = UserPreferences.myUser;
    return Scaffold(
      appBar: AppBar(
          leading: BackButton(
            color: Colors.black,
          ),
          title: const Text(
            "اطلاعات بالینی",
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
            child: CliTypeOfDisease(user),
          ),
          const SizedBox(
            height: 8,
          ),
          Center(
            child: CliLevelOfCare(user),
          ),
          const SizedBox(
            height: 8,
          ),
          Center(
            child: CliDrugSensi(user),
          ),
          const SizedBox(
            height: 8,
          ),
          Center(
            child: CliTransfosi(user),
          ),
          const SizedBox(
            height: 8,
          ),
          Center(
            child: CliDiet(user),
          ),
          const SizedBox(
            height: 8,
          ),
          Center(
            child: CliTypeOfActivity(user),
          ),
          const SizedBox(
            height: 8,
          ),
          Center(
            child: CliConnection(user),
          ),
          const SizedBox(
            height: 8,
          ),
          Center(
            child: CliWounds(user),
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

  Widget CliTypeOfDisease(User user) => TextWidget(
        TextIn: user.Cli_TypeOfDisease,
        TextTop: 'نوع بیماری',
      );
  Widget CliLevelOfCare(User user) => TextWidget(
        TextIn: user.Cli_levelOfCare,
        TextTop: 'سطح مراقبتی',
      );
  Widget CliDrugSensi(User user) => TextWidget(
        TextIn: user.Cli_DrugSensivity,
        TextTop: 'حساسیت به دارو یا غذای خاص',
      );

  Widget CliTransfosi(User user) => TextWidget(
        TextIn: user.Cli_transfosi,
        TextTop: 'سابقه ترانسفوزیون و عوارض احتمالی',
      );

  Widget CliDiet(User user) => TextWidget(
        TextIn: user.Cli_diet,
        TextTop: 'رژیم غذایی',
      );

  Widget CliTypeOfActivity(User user) => TextWidget(
        TextIn: user.Cli_TypeOfActivity,
        TextTop: 'نوع فعالیت',
      );

  Widget CliConnection(User user) => TextWidget(
        TextIn: user.Cli_Connection,
        TextTop: 'اتصالات بیمار',
      );

  Widget CliWounds(User user) => TextWidget(
        TextIn: user.Cli_Wounds,
        TextTop: 'زخم ها',
      );
}
