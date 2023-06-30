import 'package:flutter/material.dart';

class Blogs extends StatefulWidget {
  const Blogs({super.key});

  @override
  State<Blogs> createState() => _BlogsState();
}

class _BlogsState extends State<Blogs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 165, 249, 158),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 8, 125, 51),
        title: Text(
          "Blogs",
        ),
      ),
      body: SingleChildScrollView (
        child: Center(
        child: Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ListTile(
              tileColor: Color.fromARGB(255, 165, 249, 158),
              leading: Icon(Icons.food_bank),
              title: Text('Reasons to Walk Every Day'),
              subtitle: Text("Walking is one of the healthiest activities you can do. Putting one foot in front of the other has been consistently proven to benefit everything from blood pressure and weight control to your mood. And, because it only requires a pair of shoes and space to move, it is one of the easiest workouts to accomplish Whether you are walking specifically for exercise, commuting to work or choosing the stairs over the elevator, you are on the right track. All that is left is to make it a consistent habit. To that end, here are 10 great reasons to walk every day.\n IT ESTABLISHES A ROUTINE. \n One of the most difficult aspects of working out is simply showing up. Getting out the door can feel daunting, but once you string together consistent workouts, they will become part of your routine. Research suggests that it takes about 66 days to form a habit. Going for a walk every morning or taking a stroll after dinner every night will put you on the path to long-term success")
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                TextButton(
                  child: Text('Read More'),
                  onPressed: () {/* ... */},
                ),
                SizedBox(width: 8),
                SizedBox(width: 8),
              ],
            ),
            SizedBox(width: 8),
            SizedBox(width: 8),
            ListTile(
              tileColor: Color.fromARGB(255, 165, 249, 158),
              leading: Icon(Icons.food_bank),
              title: Text('How Often Should You Switch up Your Workouts?'),
              subtitle: Text("Variety may be the spice of life, but too much variety can ruin your fitness success. Whether it’s due to boredom or simply not knowing any better, switching up your workout routine too often may be what is holding you back from reaching your goals.\n Here is what you need to know about how long you should stick with the same workout routine. As well as how often you should switch training variables, like exercises, sets, reps and weights. And how often you can add variety and keep things interesting without totally winging it. \n When\n REPETITION EQUALS PROGRESS \n When our body adapts to exercise, it is simply a survival mechanism. We voluntarily apply stress to our body by working out. Afterward, our body says, Wow, that was tough. If we do not add some muscle here and increase our strength there, we may not survive that a second time. \n But if that stress never returns, our body then says, \n Must have been a fluke. We are going to stop building muscle and strength now!")
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                TextButton(
                  child: Text('Read More'),
                  onPressed: () {/* ... */},
                ),
                SizedBox(width: 8),
                SizedBox(width: 8),
              ],
            ),
            SizedBox(width: 8),
            SizedBox(width: 8),
            ListTile(
              tileColor: Color.fromARGB(255, 165, 249, 158),
              leading: Icon(Icons.food_bank),
              title: Text('How Often Should You Switch up Your Workouts?'),
              subtitle: Text("Variety may be the spice of life, but too much variety can ruin your fitness success. Whether it’s due to boredom or simply not knowing any better, switching up your workout routine too often may be what is holding you back from reaching your goals.\n Here is what you need to know about how long you should stick with the same workout routine. As well as how often you should switch training variables, like exercises, sets, reps and weights. And how often you can add variety and keep things interesting without totally winging it. \n When\n REPETITION EQUALS PROGRESS \n When our body adapts to exercise, it is simply a survival mechanism. We voluntarily apply stress to our body by working out. Afterward, our body says, Wow, that was tough. If we do not add some muscle here and increase our strength there, we may not survive that a second time. \n But if that stress never returns, our body then says, \n Must have been a fluke. We are going to stop building muscle and strength now!")
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                TextButton(
                  child: Text('Read More'),
                  onPressed: () {/* ... */},
                ),
                SizedBox(width: 8),
                SizedBox(width: 8),
              ],
            ),
            SizedBox(width: 8),
            SizedBox(width: 8),
          ],
        ),
      ),
      )
      )
    );
  }
}
