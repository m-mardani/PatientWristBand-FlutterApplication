import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:scanqr/Widget/button_widget.dart';
import 'package:scanqr/model/user.dart';
import 'package:scanqr/profile_person.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

const bgColor = Color(0xfffafafa);

class ResultScreen extends StatefulWidget {
  final String code;
  final Function() closeScreen;

  ResultScreen({super.key, required this.closeScreen, required this.code});

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  List<User> users = <User>[];

  getFeedbackFromSheet() async {
    // final url = Uri.parse(
    //     "https://script.google.com/macros/s/AKfycbwsRh8zEWr3ocwtaptbVIIC4xMSfGpvJhPugZcxE43ncp3ywRG8ps0aA51nAmsRNOMnPA/exec");
    // final headers = {'Authorization': 'Bearer{ACCESS_TOKEN}'};
    // final response = await http.get(url, headers: headers);
    // if (response.statusCode == 200) {
    //   final data = convert.jsonDecode(response.body);
    //   print(data);
    // } else {
    //   print('Request failed with Status :${response.statusCode}.');
    // }

    var raw = await http.get(Uri.parse(
        "https://script.google.com/macros/s/AKfycbxrgjD5QAggTzYaofdU-Nnhc3322qK5eqqUqmkHflPcgEsaic8n8v5sivdqWnrjxc8-AQ/exec"));

    try {
      var jsonFeedback = await convert.jsonDecode(raw.body);
      debugPrint("This is Json FeedBack $jsonFeedback");

      Map<String, dynamic> resultMap = {};
      jsonFeedback.forEach((map) => resultMap.addAll(map));

      print(resultMap);

      // print(jsonFeedback.runtimeType);

      // String searchKey = 'demoPostCode';
      // dynamic searchValue = '12012030';

      // Map<String, dynamic> result = jsonFeedback.firstWhere(
      //   (row) => row[searchKey] == searchValue.hashCode,
      //   // orElse: () => null,
      // );
      // print(result);
      // if (result != null) {
      //   print(result);
      // } else {
      //   print("Row Not Found!!!!");
      // }
    } catch (e) {
      print(e);
    }
  }

  @override
  void initState() {
    getFeedbackFromSheet();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              widget.closeScreen();
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios_new_rounded,
              color: Colors.black87,
            )),
        centerTitle: true,
        title: const Text(
          "QR Scanner",
          style: TextStyle(
              fontSize: 16,
              color: Colors.black54,
              fontWeight: FontWeight.bold,
              letterSpacing: 1),
        ),
      ),
      body: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //Show QRCode here
            QrImage(
              data: widget.code,
              size: 150,
              version: QrVersions.auto,
            ),
            const Text(
              "Scanned result",
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.black87,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              widget.code,
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black87, letterSpacing: 1),
            ),
            const SizedBox(
              height: 50,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width - 100,
              height: 48,
              child: ButtonWidget(
                  text: "Open",
                  onClick: () {
                    if (widget.code == "1012023") {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ProfilePage()),
                      );
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          backgroundColor:
                              const Color.fromARGB(255, 216, 61, 50),

                          content: const Text(
                            'پرونده مورد نظر یافت نشد لطفا مجددا امتحان فرمایید.',
                            style:
                                TextStyle(fontFamily: 'Morvarid', fontSize: 13),
                            textDirection: TextDirection.rtl,
                            textAlign: TextAlign.center,
                          ),

                          duration: const Duration(milliseconds: 5000),
                          width: 320.0, // Width of the SnackBar.

                          padding: const EdgeInsets.symmetric(
                            horizontal:
                                12.0, // Inner padding for SnackBar content.
                          ),
                          behavior: SnackBarBehavior.floating,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                        ),
                      );
                      print("Patient Not Found...");
                    }
                  }),
            )
          ],
        ),
      ),
    );
  }
}
