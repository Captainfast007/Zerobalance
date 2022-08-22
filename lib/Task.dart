import 'package:flutter/material.dart';

class Task extends StatelessWidget {
  const Task({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Task',
            style: TextStyle(fontSize: 25),
          ),
          Container(
            height: 150,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                padding: EdgeInsets.symmetric(horizontal: 10),
                itemExtent: 160,
                itemBuilder: (BuildContext context, int index) {
                  return Row(
                    children: [
                      card(index + 1, Colors.deepOrange[200]),
                    ],
                  );
                }),
          )
        ],
      ),
    );
  }

  Widget card(int t, Color? c) {
    return Container(
      height: 150,
      width: 150,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15.0),
          border: Border.all(color: Color(0xFFD6D6D6))),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            'https://img.icons8.com/office/344/hamburger.png',
                            scale: 10)),
                    color: c,
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(40.0),
                        bottomLeft: Radius.circular(0.0),
                        topLeft: Radius.circular(15.0))),
              ),
              Text(
                '   0$t',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ],
          ),
          SizedBox(
            height: 8,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text.rich(TextSpan(
                  text: 'Complete KYC\n',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  children: [
                    TextSpan(
                        text: 'Create category and \n     earn ₹25',
                        style: TextStyle(
                            fontWeight: FontWeight.normal, fontSize: 12))
                  ]))
            ],
          )
        ],
      ),
    );
  }
}
