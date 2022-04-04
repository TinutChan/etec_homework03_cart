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
            image: DecorationImage(
                image: AssetImage('${images}'), fit: BoxFit.cover),
          ),
        ),
        title: Text(
          '${title}',
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
        ),
        subtitle: Text('${subtitle}'),
        trailing: Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: Text('${trailing}',
              style:
                  const TextStyle(fontSize: 18, fontWeight: FontWeight.w400)),
        ),
        onTap: () {},
      ),
    );
  }
}
