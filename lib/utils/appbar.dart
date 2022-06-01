import 'package:application2/layout.dart';
import 'package:flutter/material.dart';


class AppBarUtil extends StatefulWidget implements PreferredSizeWidget{
  final name;
  final bool;
  const AppBarUtil({ Key? key, this.name, this.bool }) : super(key: key);

  @override

  Size get preferredSize => const Size.fromHeight(57);
  State<AppBarUtil> createState() => _AppBarUtilState();
}

class _AppBarUtilState extends State<AppBarUtil> {
  @override

  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
        title: Text(widget.name),
        leading: InkWell(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: const Icon(Icons.arrow_back_ios_new),
        ),
        actions: [
          InkWell(
            onTap: () {
              widget.bool == "true" ? Navigator.push(context, MaterialPageRoute(builder: (context) => const LayoutPage())) : null;
            },
            child: SizedBox(
              width: 65,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 3,
                itemBuilder: appBarHelper
              ),
            ),
          ),
        ],
    );
  }
}

Widget appBarHelper(BuildContext context, int index) {
  return Row(
    children: [
      Container(
        height: 10,
        width: 10,
        decoration:
            const BoxDecoration(shape: BoxShape.circle, color: Colors.white),
      ),
      const SizedBox(width: 10),
    ],
  );
}
