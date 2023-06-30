import 'package:flutter/material.dart';

class Foods extends StatefulWidget {
  const Foods({super.key});

  @override
  State<Foods> createState() => _FoodsState();
}

class _FoodsState extends State<Foods> {
  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> foodData = [
      {
        "name": "Whole Egg",
        "cals": "77",
        "protein": "6",
        "carbs": "",
        "fats": "5"
      },
      {
        "name": "Nuts - 100gm",
        "cals": "579",
        "protein": "21.15",
        "carbs": "21.55",
        "fats": "49.93"
      },
      {
        "name": "Legumes",
        "cals": "139",
        "protein": "9.7",
        "carbs": "25g",
        "fats": "0.4"
      },
      {
        "name": "Soyabeans",
        "cals": "172",
        "protein": "18.2",
        "carbs": "8.4",
        "fats": "9"
      },
      {
        "name": "Yogurt",
        "cals": "61",
        "protein": "3.5",
        "carbs": "4.7",
        "fats": "3.3"
      },
      
    ];
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 165, 249, 158),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 8, 125, 51),
        title: Text(
          "Foods",
        ),
      ),
      body: ListView.builder(
        itemCount: foodData.length,
        itemBuilder: (context, index) {
          return FoodWidget(
            name: foodData[index]["name"]!,
            cals: foodData[index]["cals"]!,
            protein: foodData[index]["protein"]!,
            carbs: foodData[index]["carbs"]!,
            fats: foodData[index]["fats"]!,          
          );
        },
      ),
    );
  }
}
class FoodWidget extends StatelessWidget {
  const FoodWidget({
    Key? key,
    required this.name,
    required this.cals,
    required this.protein,
    required this.carbs,
    required this.fats,
  }) : super(key: key);

  final String name;
  final String cals;
  final String protein;
  final String carbs;
  final String fats;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {
          print("$name, $cals, $protein, $carbs, $fats");
        },
        child: Material(
          elevation: 5,
          borderRadius: BorderRadius.circular(10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              const Icon(
                Icons.add,
                size: 50,
              ),
              const Divider(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Text('$name'),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                  ),
                  Text('Cals: $cals'),
                  Text('Protein: $protein'),
                  Text('Carbs: $carbs'),
                  Text('Fats: $fats'),

                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';
 
// void main() => runApp(const MyApp());
 
// class MyApp extends StatefulWidget {
//   const MyApp({Key? key}) : super(key: key);
 
//   static const String _title = 'Sample App';

//   @override
//   State<MyApp> createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: MyApp._title,
//       home: Scaffold(
//         appBar: AppBar(title: const Text(MyApp._title)),
//         body: const Login(),
//       ),
//     );
//   }
// }
 
// class Login extends StatefulWidget {
//   const Login({Key? key}) : super(key: key);
 
//   @override
//   State<Login> createState() => _LoginState();
// }
 
// class _LoginState extends State<Login> {
//   TextEditingController nameController = TextEditingController();
//   TextEditingController passwordController = TextEditingController();
 
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//         padding: const EdgeInsets.all(10),
//         child: ListView(
//           children: <Widget>[
//             Container(
//                 alignment: Alignment.center,
//                 padding: const EdgeInsets.all(10),
//                 child: const Text(
//                   'TutorialKart',
//                   style: TextStyle(
//                       color: Colors.blue,
//                       fontWeight: FontWeight.w500,
//                       fontSize: 30),
//                 )),
//             Container(
//                 alignment: Alignment.center,
//                 padding: const EdgeInsets.all(10),
//                 child: const Text(
//                   'Sign in',
//                   style: TextStyle(fontSize: 20),
//                 )),
//             Container(
//               padding: const EdgeInsets.all(10),
//               child: TextField(
//                 controller: nameController,
//                 decoration: const InputDecoration(
//                   border: OutlineInputBorder(),
//                   labelText: 'User Name',
//                 ),
//               ),
//             ),
//             Container(
//               padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
//               child: TextField(
//                 obscureText: true,
//                 controller: passwordController,
//                 decoration: const InputDecoration(
//                   border: OutlineInputBorder(),
//                   labelText: 'Password',
//                 ),
//               ),
//             ),
//             TextButton(
//               onPressed: () {
//                 //forgot password screen
//               },
//               child: const Text('Forgot Password',),
//             ),
//             Container(
//                 height: 50,
//                 padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
//                 child: ElevatedButton(
//                   child: const Text('Login'),
//                   onPressed: () {
//                     print(nameController.text);
//                     print(passwordController.text);
//                   },
//                 )
//             ),
//             Row(
//               children: <Widget>[
//                 const Text('Does not have account?'),
//                 TextButton(
//                   child: const Text(
//                     'Sign in',
//                     style: TextStyle(fontSize: 20),
//                   ),
//                   onPressed: () {
//                     //signup screen
//                   },
//                 )
//               ],
//               mainAxisAlignment: MainAxisAlignment.center,
//             ),
//           ],
//         ));
//   }
// }