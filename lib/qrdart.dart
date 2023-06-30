// import 'package:flutter/material.dart';
// import 'package:qr_code_scanner/qr_code_scanner.dart';

// class QRScannerOverlayWidget extends StatelessWidget {
//   const QRScannerOverlayWidget({Key? key, required this.qrKey}) : super(key: key);

//   final GlobalKey qrKey;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       alignment: Alignment.center,
//       child: RepaintBoundary(
//         key: qrKey,
//         child: Stack(
//           children: [
//             QrScannerOverlayShape(
//               borderColor: Colors.red,
//               borderRadius: 16,
//               borderLength: 24,
//               borderWidth: 8,
//               cutOutSize: 300,
//             ),
//             Center(
//               child: Container(
//                 width: 300,
//                 height: 300,
//                 decoration: BoxDecoration(
//                   border: Border.all(color: Colors.red, width: 4),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
