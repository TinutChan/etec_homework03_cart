import 'package:etec_homework_03/Models/list_items.dart';
import 'package:etec_homework_03/widgets/total_price.dart';
import 'package:flutter/material.dart';

import '../widgets/list_tile.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color(0xff3f37c9),
          leading: IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {},
          ),
          title: const Text('Cart'),
          actions: const [
            Icon(Icons.search),
            SizedBox(
              width: 10,
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(Icons.more_vert),
            )
          ]),
      body: Container(
        padding: EdgeInsets.only(left: 15, top: 20, right: 20, bottom: 25),
        //margin: EdgeInsets.only(left: 15, top: 20, right: 20, bottom: 25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              '4 items in your cart',
              style: TextStyle(fontSize: 18),
            ),
            Container(
              margin: const EdgeInsets.only(top: 25, bottom: 20),
              child: Wrap(
                  runSpacing: 10,
                  children: list_items.map((e) {
                    return ListTile01(
                      images: e.images,
                      subtitle: e.subtitle,
                      title: e.title,
                      trailing: e.trailing,
                    );
                  }).toList()),
            ),
            const Divider(
              color: Colors.grey,
              height: 10,
              endIndent: 10,
              thickness: 1,
              indent: 10,
            ),
            Container(
              padding: const EdgeInsets.only(
                  top: 30, bottom: 25, left: 20, right: 20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text('TOTAL',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w300)),
                      Text('41.42',
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.w600)),
                    ],
                  )
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Wrap(
                  children: list_price.map((e) {
                return TotalPrice(
                  price: e.price,
                  total: e.total,
                );
              }).toList()),
            ),
          ],
        ),
      ),
    );
  }
}
