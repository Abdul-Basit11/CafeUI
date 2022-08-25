import 'package:flutter/material.dart';


var myAppBar=AppBar(
  backgroundColor: Color(0xffFFB901),
  elevation: 0,
  leading: Icon(
    Icons.arrow_back_ios,
    size: 20,
    color: Colors.black,
  ),
  actions: [
    Padding(
      padding: const EdgeInsets.only(top: 20.0, right: 20),
      child: Text(
        'Register',
        style: TextStyle(
            color: Colors.black,
            fontSize: 15,
            fontWeight: FontWeight.bold),
      ),
    )
  ],
);