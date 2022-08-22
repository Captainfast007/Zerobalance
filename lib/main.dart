import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:zerobalance/Blogs.dart';
import 'package:zerobalance/KYC2.dart';
import 'package:zerobalance/Categories_View.dart';
import 'package:zerobalance/Offers&rewars.dart';
import 'package:zerobalance/Task.dart';
import 'package:zerobalance/backend.dart';
import 'package:zerobalance/constants.dart';
import 'package:zerobalance/finalRow.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:zerobalance/kyc.dart';
import 'package:zerobalance/models/transaction.dart';

TransactionDB trans=TransactionDB();

 main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(TransactionAdapter());
  await Hive.openBox(SettingsBox);
  var transactionBox = await Hive.openBox(TransactionBox);
  print(transactionBox.values);
  trans.addAll(transactionBox.values);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
int _index=0;

  @override
  Widget build(BuildContext context) {
    var box=Hive.box(SettingsBox);
    return Scaffold(
      extendBodyBehindAppBar: false,
      appBar: AppBar(

        backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: 20,
            height: 20,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(25.0),image: DecorationImage(image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSzHQv_th9wq3ivQ1CVk7UZRxhbPq64oQrg5Q&usqp=CAU'))),
          ),
        ),

        title: const Text.rich(
          TextSpan(
            text: '\n',
            style: TextStyle(
              color: Colors.black,
              fontSize: 14,
              fontFamily: 'Roboto',
            ),
            children: <TextSpan>[
              TextSpan(
                text: 'Welcome back,\n',
                style: TextStyle(
                  fontSize: 12,
                  fontFamily: 'Roboto',
                ),
              ),
              TextSpan(
                text: '\n',
                style: TextStyle(
                  fontSize: 15,
                  fontFamily: 'Roboto',
                ),
              ),
              TextSpan(
                text: 'Waseem Akram\n',
                style: TextStyle(
                  fontSize: 18,
                  fontFamily: 'Roboto',
                ),
              ),
              TextSpan(
                text: '\n',
                style: TextStyle(
                  fontSize: 15,
                  fontFamily: 'Roboto',
                ),
              ),
            ],
          ),
          strutStyle: StrutStyle(
            fontFamily: 'Roboto',
            fontSize: 14,
            height: 1,
            forceStrutHeight: true,
          ),
        ),


        actions: [
          MaterialButton(onPressed: (){},
            child: IconButton(icon: const Icon(Icons.menu), onPressed: () {  },),)
        ],
      ),

      bottomNavigationBar:
      SalomonBottomBar(
        //selectedColorOpacity: 0.5,
      currentIndex: _index,
      onTap: (i) => setState(() => _index = i),
      items: [
        /// Home
        SalomonBottomBarItem(
          icon: Icon(Icons.home),
          title: Text("Home"),
          selectedColor: Colors.purple,
        ),

        /// Likes
        SalomonBottomBarItem(
          icon: Icon(Icons.favorite_border),
          title: Text("Likes"),
          selectedColor: Colors.pink,
        ),

        /// Search
        SalomonBottomBarItem(
          icon: Icon(Icons.search),
          title: Text("Search"),
          selectedColor: Colors.orange,
        ),

        /// Profile
        SalomonBottomBarItem(
          icon: Icon(Icons.person),
          title: Text("Profile"),
          selectedColor: Colors.teal,
        ),
      ],
    ),
      body:  SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 8.0,top: 20,bottom: 10),
                child:(box.isEmpty)? const Text(
                  'Complete your\nKYC Now',style: TextStyle(fontSize: 20,color: Color(0xFF757575)),
                ):const Text(
                  'Your doing \ngreat keep it up',style: TextStyle(fontSize: 20,color: Color(0xFF757575)),
              ),),

               kyc(),
              Categories(),
              const Task(),
              const reward(),
              const blogs(),
              SizedBox(height: 8,),
              FinalRow(),
            ],
          ),
      ), //
    );
  }
}
