import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
   Categories({Key? key}) : super(key: key);

  final List<String> url=['https://img.icons8.com/office/344/hamburger.png',
    'https://img.icons8.com/office/344/dog-footprint.png',
    'https://cdn-icons-png.flaticon.com/512/8267/8267752.png',
    'https://cdn-icons-png.flaticon.com/512/1179/1179069.png',
    'https://upload.wikimedia.org/wikipedia/commons/thumb/9/90/Twemoji_1f600.svg/1200px-Twemoji_1f600.svg.png'];

  final List<String> name=['Food','Pet','Shopping','Entertainment','Laugh'];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Categories',style: TextStyle(fontSize: 25),),
          SizedBox(height: 8,),
         Container(
           height: 100,
           child: ListView.builder(
               scrollDirection: Axis.horizontal,
               itemCount: 5,
               padding: EdgeInsets.symmetric(horizontal: 10),
               itemExtent: 90,
               itemBuilder: (BuildContext context, int index) {
                 return Row(
                   children: [
                     rounded(url[index],name[index]),
                   ],
                 );
               }),
         )
        ],
      ),
    );
  }

  Widget rounded(String url,String name){
    return Column(
      children: [
        Container(height: 70,width: 70,decoration: BoxDecoration(image: DecorationImage(image: NetworkImage(url,scale: 10)),color:Colors.white,shape: BoxShape.circle,border: Border.all(color: Color(0xFFD6D6D6)))),
        SizedBox(height: 5,),
        Text(name),
      ],
    );
}
}
