import 'package:flutter/material.dart';

class FinalRow extends StatelessWidget {
  const FinalRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 240,
        width: 20,
        ),
        Container(
          height: 210,
          width: 6,
          decoration: BoxDecoration(color: Colors.grey[350],
              borderRadius: BorderRadius.all(Radius.circular(18))),),
        SizedBox(width: 15,),
        SizedBox(width: 350,
        height: 240,
        child: Text('A budget doesn\'t\nlimit your freedom;\nit gives\nfreedom',
          style: TextStyle(fontSize: 34,fontWeight: FontWeight.bold,color: Colors.grey[400]),),
        )
      ],
    );
  }
}
