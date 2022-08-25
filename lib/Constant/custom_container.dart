import 'package:flutter/material.dart';



class Customcontainer extends StatelessWidget {

  final String ImagePath;
  final String title;
  final IconData icon;

  const Customcontainer({super.key, required this.ImagePath, required this.title, required this.icon});



  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black38,
              blurRadius: 2,
              offset: Offset(2, 2),
            )
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(ImagePath,height: 40,width: 40,fit: BoxFit.cover,),
          Text(title),
          Icon(icon,color: Colors.black,)
        ],
      ),
    );
  }
}
