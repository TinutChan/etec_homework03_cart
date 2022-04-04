import 'package:flutter/material.dart';

class ListTile01 extends StatelessWidget {
  final String? images;
  final String? title;
  final String? subtitle;
  final String? trailing;
  const ListTile01(
      {Key? key, this.images, this.title, this.subtitle, this.trailing})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListTile(
        leading: Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.circular(6),
            image: DecorationImage(image: AssetImage('${images}')),
          ),
        ),
        title: Text(
          '${title}',
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
        ),
        subtitle: Text('${subtitle}'),
        trailing: Text('${trailing}',
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w600)),
        onTap: () {},
      ),
    );
  }
}
