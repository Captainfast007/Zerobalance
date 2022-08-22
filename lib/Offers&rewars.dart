import 'package:flutter/material.dart';

class reward extends StatelessWidget {
  const reward({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Offers & Rewards',
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
          Row(
            children: [
              Container(
                height: 110,
                width: 248,
                decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: const BorderRadius.all(Radius.circular(15.0))),
              ),
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: SizedBox(
                    child: Text(
                      'A rewarding Celebration',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: SizedBox(
                    child: Text(
                      'Win rewards from Citizen,peter england, and More',
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(width: 224,
            height: 50,
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.indigo),
                borderRadius: const BorderRadius.all(Radius.circular(15.0))),
            child: MaterialButton(
              onPressed: () {},
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15.0))),
              child: const Text(
                'Explore rewards +',
                style: TextStyle(fontSize: 15, color: Colors.indigo),
              ),
            ),
          )
        ],
      ),
    );
  }
}
