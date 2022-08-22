import 'package:flutter/material.dart';

class blogs extends StatelessWidget {
  const  blogs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Blogs',
            style: TextStyle(fontSize: 25),
          ),
          const SizedBox(
            height: 8,
          ),
          SizedBox(
            height: 270,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                padding: const EdgeInsets.symmetric(horizontal: 10),
                itemExtent: 270,
                itemBuilder: (BuildContext context, int index) {
                  return Row(
                    children: [
                      card1(),
                    ],
                  );
                }),
          ),
        ],
      ),
    );
  }

  Widget card1() {
    final DateTime date=DateTime.now();
    return Container(
      height: 260,
      width: 250,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15.0),
          border: Border.all(color: const Color(0xFFD6D6D6))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
              height: 110,
              width: 224,
              decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: const BorderRadius.all(Radius.circular(15.0))),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 12,right: 12),
                child: SizedBox(
                  width: 180,
                  child: Text(
                    '4 methods of calculating Network, which no one will tell you ',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 12.0),
                child: SizedBox(
                  child: Text(
                    'Read Time: 8 mins',
                    style: TextStyle(color: Colors.indigo),
                  ),
                ),
              ),
              const SizedBox(height: 5,),
              Padding(padding: const EdgeInsets.only(left: 12),
                child: Row(
                  children: [
                    Container(height: 30,width: 30,decoration: const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(15)),
                        image: DecorationImage(image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSbXnfPIxxIzvNieDkY3d26tln4fQPEioS95d0MZ2hX&s'))),),
                    const SizedBox(width: 8,),
                    const SizedBox(width: 115,
                    child: Text('Ann Korkowski'),
                    ),
                    SizedBox(
                      child: Text('${date.day}/${date.month}/${date.year}'),
                    )
                  ],
                ),
              ),
              
            ],
          ),
        ],
      ),
    );
  }
}
