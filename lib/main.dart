import 'package:flutter/material.dart';
 
void main() {
  runApp(MyApp());
}
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ResumeScreen(),
    );
  }
}
 
class ResumeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('Resume'),
        backgroundColor: const Color.fromARGB(255, 190, 247, 255),
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            color: Colors.grey[900],
            border: Border.all(color: Colors.white, width: 1),
            borderRadius: BorderRadius.circular(8),
          ),
          width: 400,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Column(
                  children: [
                    Image.network(
  'https://i.pinimg.com/originals/49/4c/b6/494cb61b311ba46a0ea36b46de5c863c.jpg',
  width: 400, // กำหนดขนาดความกว้างของรูปภาพ
  height: 200, // กำหนดความสูงของรูปภาพ
  fit: BoxFit.cover, // ใช้ BoxFit.cover เพื่อให้รูปเต็มพื้นที่โดยไม่บิดเบือน
)
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Nanthapong', style: headerStyle),
                  Text('Amchek', style: headerStyle),
                  Text('Captain', style: headerStyle),
                ],
              ),
              Divider(color: Colors.white),
              SizedBox(height: 8),
              Text('Hobby: Play the game', style: normalStyle),
              Text('Food: noodle', style: normalStyle),
              Text('Birthplace: tak', style: normalStyle),
              SizedBox(height: 16),
              Text('Education:', style: headerStyle),
              SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('elementary: talookpatan', style: normalStyle),
                  Text('year: 2010', style: normalStyle),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('primary: taksinrachanusorn', style: normalStyle),
                  Text('year: 2016', style: normalStyle),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('high school: phadungpanya ', style: normalStyle),
                  Text('year: 2019', style: normalStyle),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Undergrad: naresuan University', style: normalStyle),
                  Text('year: 2022', style: normalStyle),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
 
  TextStyle get headerStyle => TextStyle(
        color: Colors.red,
        fontWeight: FontWeight.bold,
        fontSize: 16,
      );
 
  TextStyle get normalStyle => TextStyle(
        color: Colors.white,
        fontSize: 14,
      );
}
 