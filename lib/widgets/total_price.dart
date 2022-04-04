import 'package:flutter/material.dart';

class TotalPrice extends StatelessWidget {
  final String? total;
  final String? price;
  const TotalPrice({Key? key, this.total, this.price}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(top: 10),
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                '${total}',
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
              ),
              Text('${price}',
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.w300)),
            ],
          ),
        ]));
  }
}
