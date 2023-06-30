import 'package:flutter/material.dart';

class ProfileWidget extends StatelessWidget {
  final String imagepath;
  const ProfileWidget({
    Key? key,
    required this.imagepath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Color = Theme.of(context).colorScheme.primary;
    return Center(
      child: Stack(children: [
        buildImage(),
        Positioned(
          bottom: 0,
          right: 4,
          child: buildEditIcon(Color),
        ),
      ]),
    );
  }

  Widget buildImage() {
    // final image = NetworkImage(imagepath);
    final image = Image.asset("images/man.jpg");
    return ClipOval(
      child: Material(
        color: Colors.transparent,
        child: Ink.image(
          image: image.image,
          fit: BoxFit.cover,
          width: 128,
          height: 128,
          // child: InkWell(onTap: onClicked,),
        ),
      ),
    );
  }

  Widget buildEditIcon(Color color) => buildCircle(
        color: const Color.fromARGB(255, 23, 4, 99),
        alll: 8.0,
        child: const Icon(
          Icons.local_hotel_outlined,
          color: Colors.white,
          size: 20,
        ),
      );
  buildCircle(
          {required Color color, required double alll, required Icon child}) =>
      ClipOval(
        child: Container(
          padding: EdgeInsets.all(alll),
          color: color,
          child: child,
        ),
      );
}
