import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:dropdown_button2/dropdown_button2.dart';

import '../../../routes/app_pages.dart';
import '../controllers/booking_controller.dart';

class BookingView extends GetView<BookingController> {
  final List<String> items = [
  'Item1',
  'Item2',
  'Item3',
  'Item4',
];
String? selectedValue;
  @override
 Widget build(BuildContext context) {
    int currentIndex = 0;
    return Scaffold(
      
      appBar: AppBar(
        
        title: Text('Purnomo Mobil',
        textAlign: TextAlign.center,
        style: TextStyle(
                 fontFamily: 'Raleway',
                
                  ),
        ),
        backgroundColor: Color.fromARGB(255, 121, 35, 8),
        elevation: 0,
      ),     
      body: Stack(
        children: [
             Expanded(
                  child: Container(
                    child: Column(
                      children: [
                        Expanded(
                          child: ListView(  
                            padding: EdgeInsets.symmetric(horizontal: 25),
                            children: [
                              SizedBox(height: 22),
                              Text(
                                "Isi Data Ini Bawah Ini",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 10),
                              TextFormField(
                                    decoration: const InputDecoration(
                                      icon: Icon(Icons.person),
                                      hintText: 'Siapa namamu?',
                                      labelText: 'Nama *',
                                    ),
                                    onSaved: (String? value) {
                                      // This optional block of code can be used to run
                                      // code when the user saves the form.
                                    },
                                    validator: (String? value) {
                                      return (value != null && value.contains('@')) ? 'Do not use the @ char.' : null;
                                    },
                               ),
                               TextFormField(
                                    decoration: const InputDecoration(
                                      icon: Icon(Icons.cabin),
                                      hintText: 'Dimana kamu tinggal?',
                                      labelText: 'Alamat *',
                                    ),
                                    onSaved: (String? value) {
                                      // This optional block of code can be used to run
                                      // code when the user saves the form.
                                    },
                                    validator: (String? value) {
                                      return (value != null && value.contains('@')) ? 'Do not use the @ char.' : null;
                                    },
                               ),TextFormField(
                                    decoration: const InputDecoration(
                                      icon: Icon(Icons.call),
                                      hintText: 'Berapa nomor hp kamu?',
                                      labelText: 'No Hp *',
                                    ),
                                    onSaved: (String? value) {
                                      // This optional block of code can be used to run
                                      // code when the user saves the form.
                                    },
                                    validator: (String? value) {
                                      return (value != null && value.contains('@')) ? 'Do not use the @ char.' : null;
                                    },
                               ),
                               TextFormField(
                                    decoration: const InputDecoration(
                                      icon: Icon(Icons.car_crash),
                                      hintText: 'Berapa nomer kendaraan kamu?',
                                      labelText: 'Nomor kendaraan *',
                                    ),
                                    onSaved: (String? value) {
                                      // This optional block of code can be used to run
                                      // code when the user saves the form.
                                    },
                                    validator: (String? value) {
                                      return (value != null && value.contains('@')) ? 'Do not use the @ char.' : null;
                                    },
                               ),
                               TextFormField(
                                    decoration: const InputDecoration(
                                      icon: Icon(Icons.book),
                                      hintText: 'Apa keluhan yang kamu alami?',
                                      labelText: 'Keluhan *',
                                    ),
                                    onSaved: (String? value) {
                                      // This optional block of code can be used to run
                                      // code when the user saves the form.
                                    },
                                    validator: (String? value) {
                                      return (value != null && value.contains('@')) ? 'Do not use the @ char.' : null;
                                    },
                               ),

                              SizedBox(height: 30),
                              ElevatedButton(
                                onPressed: () => Get.offAllNamed(Routes.HOME),
                                child: Text(
                                  "KIRIM",
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 255, 255, 255),
                                  ),
                                ),
                                style: ElevatedButton.styleFrom(
                                  primary: Color.fromARGB(255, 121, 35, 8),
                                  fixedSize: Size(150, 50),
                                ),
                              ),
                              //  DropdownButtonHideUnderline(
                              //   child: DropdownButton2(
                              //     hint: Text(
                              //       'Pilih keluhan',
                              //       style: TextStyle(
                              //         fontSize: 14,
                              //         color: Theme.of(context).hintColor,
                              //       ),
                              //     ),
                            
                              //   ) 
                              //  )
                                
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );   
  }
}



