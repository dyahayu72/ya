import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:mytsel/app/routes/app_pages.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: Padding(
      
        padding: const EdgeInsets.symmetric(horizontal: 30),
        
        child: 
        
        ListView(
          children: [
            SizedBox(height: 20),
            Container(
              alignment: Alignment.centerLeft,
              height: 150,
              child: Image.asset(
                "assets/icons/logo.png",
                fit: BoxFit.contain,
              ),
            ),
            SizedBox(height: 30),
            Text(
              "Silahkan masuk dengan nomor telepon kamu",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30),
            Text(
              "Nomor HP",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            TextField(
              controller: controller.phoneC,
              keyboardType: TextInputType.phone,
              autocorrect: false,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Cth. 08129011xxxx",
              ),
            ),

            SizedBox(height: 10),
            Text(
              "Password",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            TextField(
              controller: controller.phoneC,
              keyboardType: TextInputType.phone,
              autocorrect: false,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Cth. ayxxx",
              ),
            ),
            SizedBox(height: 10),
            // Text(
            //   "Password",
            //   style: TextStyle(
            //     fontSize: 18,
            //     fontWeight: FontWeight.bold,
            //   ),
            // ),
            // SizedBox(height: 10),
            // TextField(
            //   controller: controller.phoneC,
            //   keyboardType: TextInputType.phone,
            //   autocorrect: false,
            //   decoration: InputDecoration(
            //     border: OutlineInputBorder(),
            //     hintText: "",
            //   ),
            // ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () => Get.offAllNamed(Routes.Booking),
              child: Text(
                "MASUK",
                style: TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
              ),
              style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(255, 121, 35, 8),
                fixedSize: Size(150, 50),
              ),
            ),
            SizedBox(height: 20),
            SizedBox(height: 40),
           
          ],
        ),
      ),
    );
  }
}
