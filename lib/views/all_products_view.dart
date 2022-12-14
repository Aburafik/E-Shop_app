import 'package:e_commerce_app/commons/widgets.dart';
import 'package:flutter/material.dart';

class AllProductView extends StatelessWidget {
  const AllProductView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextStyle titleStyle = Theme.of(context)
        .textTheme
        .bodyText1!
        .copyWith(fontSize: 18, fontWeight: FontWeight.bold);
    var outlineInputBorder = OutlineInputBorder(
        borderSide: BorderSide(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(10));
    return Scaffold(
      appBar: prouctsViewAppBar(context, titleStyle),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 15),
              child: Text(
                "Choose a brand",
                style: titleStyle,
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                        border: outlineInputBorder,
                        focusedBorder: outlineInputBorder,
                        hintText: "Search for brand",
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.grey,
                        )),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Material(
                  color: Color(0xff4FAFFA),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: const Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Icon(
                      Icons.sort,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 10,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, index) => const Padding(
                  padding: EdgeInsets.all(3.0),
                  child: CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.grey,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
