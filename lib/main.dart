import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}
class LoginPage extends StatelessWidget{
  const LoginPage({super.key});
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           Text(
             'Welcome Back!',
             style: TextStyle(
               fontSize:28,
               fontWeight: FontWeight.bold,
               color: Colors.blueAccent,
             ),
           ),
           SizedBox(height:30),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Username',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.person),
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'password',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.lock),
                ),
              ),
            ),
            SizedBox(height:30),
            ElevatedButton(
              onPressed:() {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder:(context)=>ProfilePage())
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepPurple,
                padding: EdgeInsets.symmetric(horizontal:50, vertical:15),
              ),
              child: Text(
                'Login',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
class ProfilePage extends StatefulWidget{
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState()=> _ProfilePageState();
}
class _ProfilePageState extends State<ProfilePage>{
  int mood=0;

  @override
  Widget build (BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('My Profile'),
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            Text(
              'Welcome Vaishnavi!',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.deepPurple,
              ),
            ),
            SizedBox(height:30),
            Text(
              mood>0?'😊': mood<0?'😞':'😐',
              style: TextStyle(fontSize: 60),
            ),
            SizedBox(height:10),
            Text(
              'How are you feeling today',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height:20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:[
                ElevatedButton(
                  onPressed: (){
                    setState(() {
                      mood++;
                    });
                  },
                  child: Text('Happy'),
                ),
                SizedBox(width:10),
                ElevatedButton(
                  onPressed: (){
                    setState(() {
                      mood--;
                    });
                  },
                  child:Text('Sad'),
                ),
              ],
            ),
            SizedBox(height: 20),
            Text(
              'Mood Score: $mood',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.deepPurple,
              ),
            ),
          ],
        ),
      ),
    );
  }
}