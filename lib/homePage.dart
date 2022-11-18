import 'package:flutter/material.dart';
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
        backgroundColor: Color.fromRGBO(10, 10, 20, 1.0),
        appBar: AppBar(
          elevation: 20,
          title: Text('KHAO FIT'),
          centerTitle: true,
          backgroundColor: Color.fromRGBO(10, 15, 30, 1.0),
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
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Container(
              height: height * 0.2,
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
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
        /*------------------------------------------*/
        drawer: Drawer(
          child: ListView(
            padding: const EdgeInsets.all(6.0),
            children: <Widget>[
              // DrawerHeader(child: null,
              // child: Text(''),
              // decoration: BoxDecoration(
              //   image: DecorationImage(
              //     image: AssetImage("assets/profilebg.jpg"),
              // fit: BoxFit.cover,
              // ),
              // ),
              // ),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Need Help ?',
                ),
              ),
              // ElevatedButton(
              //   onPressed: () {},
              //   child: Text('Food'),
              // ),
              ListTile(
                title: Text('Food'),
                tileColor: Colors.cyan,
              ),
              ListTile(
                title: Text('Drinks'),
                tileColor: Colors.cyan,
              ),
              ListTile(
                title: Text('BMI Calculator'),
                tileColor: Colors.cyan,
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BMICalculator(),
                      ));
                },
              ),
              ListTile(
                title: Text('Blogs'),
                tileColor: Colors.cyan,
              ),
              ListTile(
                title: Text('Contact Us'),
                tileColor: Colors.cyan,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
