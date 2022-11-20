import 'package:flutter/material.dart';
import 'package:khao_fit/Blogs.dart';
import 'package:khao_fit/ContactUs.dart';
import 'package:khao_fit/Drinks.dart';
import 'package:khao_fit/Foods.dart';
import 'package:khao_fit/bmiCalculator.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    print("$height $width");
    return Center(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 165, 249, 158),
        appBar: AppBar(
          elevation: 20,
          title: Text('KHAO FIT'),
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 8, 125, 51),
        ),
        /*------------------------------------------*/
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Center(
                child: Text(
                  "\n HEALTH REQUIRES HEALTHY FOOD",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(10, 15, 30, 1.0),
                  ),
                ),
              ),
            ),
            Container(
              height: height * 0.5,
              width: width,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    "assets/images/homepagebg.png",
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Center(
                child: Text(
                  "Eating healthy food fills your body with energy and nutrients.\n Imagine your cells smiling back at you and saying\n 'THANK YOU'",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(10, 15, 30, 1.0),
                  ),
                ),
              ),
            ),
          ],
        ),
        /*------------------------------------------*/
        drawer: Drawer(
          backgroundColor: Color.fromARGB(255, 165, 249, 158),
          child: ListView(
            padding: EdgeInsets.all(6.0),
            children: <Widget>[
              DrawerHeader(
                child: null,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/profilebg.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Need Help ?',
                ),
              ),
              SizedBox(
                height: 10,
              ),
              ListTile(
                title: Text(
                  'Food',
                  textAlign: TextAlign.center,
                ),
                tileColor: Color.fromARGB(255, 8, 125, 51),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Foods(),
                    )
                  );
                },
              ),
              SizedBox(
                height: 10,
              ),
              ListTile(
                title: Text(
                  'Drinks',
                  textAlign: TextAlign.center,
                ),
                tileColor: Color.fromARGB(255, 8, 125, 51),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Drinks(),
                    )
                  );
                },
              ),
              SizedBox(
                height: 10,
              ),
              ListTile(
                title: Text(
                  'BMI Calculator',
                  textAlign: TextAlign.center,
                ),
                tileColor: Color.fromARGB(255, 8, 125, 51),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BMICalculator(),
                    )
                  );
                },
              ),
              SizedBox(
                height: 10,
              ),
              ListTile(
                title: Text(
                  'Blogs',
                  textAlign: TextAlign.center,
                ),
                tileColor: Color.fromARGB(255, 8, 125, 51),
                onTap: () {
                  Navigator.push(
                    context,
                      MaterialPageRoute(
                        builder: (context) => Blogs()
                      )
                  );
                },
              ),
              SizedBox(
                height: 10,
              ),
              ListTile(
                title: Text(
                  'Contact Us',
                  textAlign: TextAlign.center,
                ),
                tileColor: Color.fromARGB(255, 8, 125, 51),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ContactUs(),
                    )
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
