import 'package:flutter/material.dart';

AppBar prouctsViewAppBar(BuildContext context, TextStyle titleStyle) {
  return AppBar(
    backgroundColor: Theme.of(context).scaffoldBackgroundColor,
    centerTitle: false,
    iconTheme: IconThemeData(color: Colors.grey[400]),
    elevation: 0,
    automaticallyImplyLeading: false,
    leadingWidth: 80,
    leading: Container(
      margin: EdgeInsets.only(left: 20),
      height: 50,
      width: 50,
      decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                  "https://images.unsplash.com/photo-1619895862022-09114b41f16f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8cHJvZmlsZSUyMHBpY3R1cmV8ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60"))),
    ),
    title: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Helo", style: titleStyle),
        Text(
          "Citizen Raf",
          style: titleStyle,
        )
      ],
    ),
    actions: const [Icon(Icons.notifications), SizedBox(width: 20)],
  );
}
