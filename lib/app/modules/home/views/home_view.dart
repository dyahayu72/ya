import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../controllers/booking_controller.dart';
import '../controllers/home_controller.dart';

// class HomeView extends StatefulWidget{
//   @
// }

class HomeView extends GetView<HomeController> {


  
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
      
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: currentIndex,
              selectedFontSize: 20,
              iconSize: 20,
              backgroundColor: Color.fromARGB(255, 121, 35, 8),
               mouseCursor: SystemMouseCursors.grab,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Beranda',
          ),

          
          BottomNavigationBarItem(
            icon: Icon(Icons.assignment),
            label: 'Booking',
          ),
          
          
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'profile',
          ),
        ],
      //  currentIndex: _selectedIndex, //New
      //  onTap: _onItemTapped,  
        selectedItemColor: Color.fromARGB(255, 248, 246, 245),
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
      ),
      body: Stack(
        children: [
          
          Container(
            margin: EdgeInsets.only(top: 0),
            child: Column(
              children: [
               Container(
            height: 220,
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/baner.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          
                Expanded(
                  child: Container(
                    // color: Colors.purple,
                    child: Column(
                      children: [
                        // body
                        Expanded(
                          child: ListView(  
                            padding: EdgeInsets.symmetric(horizontal: 25),
                            children: [
                              SizedBox(height: 22),
                              Text(
                                "Kenapa Harus Kami",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  
                                ),
                              ),
                              SizedBox(height: 10),
                              Text(
                                "Kami merupakan bengkel profesional yang telah berpengalaman selama puluhan tahun dalam menangani permasalahan kendaraan. Dengan berbagai pengalaman dan pekerjaan yang kami kerjakan dengan mesin dan alat yang memiliki hasil diagnosa yang akurat. Dan juga dengan menjamin garansi servis yang memastikan hasil yang terbaik untuk kepuasan bagi perawatan mobil anda.",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: 'Raleway'
                                ),
                              ),
                              
                              SizedBox(height: 15),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                ]
                              ),
                              SizedBox(height: 15),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Blog Terbaru",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  
                                ],
                              ),
                              SizedBox(height: 20),
                              SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                
                                child: Row(
                                  children: 
                                  [
                                    ItemTerbaru(
                                      image: "assets/images/a.jpeg",
                                      
                                    ),
                                    ItemTerbaru(
                                      image: "assets/images/b.jpeg",
                                    ),
                                    ItemTerbaru(
                                      image: "assets/images/c.jpeg",
                                    ),
                                    ItemTerbaru(
                                      image: "assets/images/d.jpeg",
                                    ),
                                    ItemTerbaru(
                                      image: "assets/images/e.jpeg",
                                    ),
                                    ItemTerbaru(
                                      image: "assets/images/f.jpeg",
                                    ),
                                    ],
                                
                                ),
                                
                              ),
                              SizedBox(height: 30),
                              Text(
                                "Layanan Servis",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  
                                ),
                              ),
                              
                               SizedBox(height: 20),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    children: [
                                      Image.asset(
                                        "assets/icons/REM.png",
                                        width: 50.0,
                                        height: 50.0,
                                        fit: BoxFit.cover,
                                      ),
                                      SizedBox(width: 8),
                                      Text(
                                        'Label 1',
                                        style: TextStyle(fontSize: 16),
                                        textAlign: TextAlign.center,
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Image.asset(
                                        "assets/icons/REM.png",
                                        width: 50.0,
                                        height: 50.0,
                                        fit: BoxFit.cover,
                                      ),
                                      SizedBox(width: 8),
                                      Text(
                                        'Label 2',
                                        style: TextStyle(fontSize: 16),
                                        textAlign: TextAlign.center,
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Image.asset(
                                        "assets/icons/REM.png",
                                        width: 50.0,
                                        height: 50.0,
                                        fit: BoxFit.cover,
                                      ),
                                      SizedBox(width: 8),
                                      Text(
                                        'Label 2',
                                        style: TextStyle(fontSize: 16),
                                        textAlign: TextAlign.center,
                                      ),
                                    ],
                                  ),
                                ],
                              ), 

                              SizedBox(height: 20),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    children: [
                                      Image.asset(
                                        "assets/icons/REM.png",
                                        width: 50.0,
                                        height: 50.0,
                                        fit: BoxFit.cover,
                                      ),
                                      SizedBox(width: 8),
                                      Text(
                                        'Label 1',
                                        style: TextStyle(fontSize: 16),
                                        textAlign: TextAlign.center,
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Image.asset(
                                        "assets/icons/REM.png",
                                        width: 50.0,
                                        height: 50.0,
                                        fit: BoxFit.cover,
                                      ),
                                      SizedBox(width: 8),
                                      Text(
                                        'Label 2',
                                        style: TextStyle(fontSize: 16),
                                        textAlign: TextAlign.center,
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Image.asset(
                                        "assets/icons/REM.png",
                                        width: 50.0,
                                        height: 50.0,
                                        fit: BoxFit.cover,
                                      ),
                                      SizedBox(width: 8),
                                      Text(
                                        'Label 2',
                                        style: TextStyle(fontSize: 16),
                                        textAlign: TextAlign.center,
                                      ),
                                    ],
                                  ),
                                ],
                              ),  
                            ],
                          ),
                        ),
                        
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
      
    );
  }
}
// int _selectedIndex = 0;
// void _onItemTapped(int index) {
//   setState(() {
//     _selectedIndex = index;
//   });
// }

// void setState(Null Function() param0) {
// }

class ItemTerbaru extends StatelessWidget {
  ItemTerbaru({
    Key? key,
    required this.image,
  }) : super(key: key);

  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 20),
      width: 200,
      height: 200,
      decoration: BoxDecoration(
        color: Colors.amber,
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class ItemKategori extends StatelessWidget {
  ItemKategori({
    Key? key,
    required this.title,
    required this.icon,
  }) : super(key: key);

  final String title;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 50,
          height: 100,
          child: Image.asset(
            icon,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(height: 5),
        Text(
          title,
          style: TextStyle(
            fontSize: 16,
          ),
        ),
      ],
    );
  }
}
class StatusCard extends StatelessWidget {
  StatusCard({
    Key? key,
    required this.title,
    required this.data,
    required this.satuan,
  }) : super(key: key);

  final String title;
  final String data;
  final String satuan;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: EdgeInsets.all(10),
        width: Get.width * 0.25,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            RichText(
              text: TextSpan(
                text: data,
                style: TextStyle(
                  fontSize: 22,
                  color: Color(0xFFEC2028),
                  fontWeight: FontWeight.bold,
                ),
                children: [
                  TextSpan(
                    text: " $satuan",
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xFF747D8C),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ClipInfoClass extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height);
    path.lineTo(size.width - 80, size.height);
    path.lineTo(size.width, size.height - 80);
    path.lineTo(size.width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}

class ClipPathClass extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height - 60);
    path.quadraticBezierTo(
      size.width / 2,
      size.height,
      size.width,
      size.height - 60,
    );
    path.lineTo(size.width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
  
}
