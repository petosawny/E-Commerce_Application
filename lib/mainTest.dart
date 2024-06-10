import 'package:flutter/material.dart';
import 'package:untitled/data/SQLDb.dart';

class TestPage extends StatelessWidget {
  TestPage({Key? key}) : super(key: key);

  SqlDb sqlDb = SqlDb();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Page"),
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Container(
          //   child: MaterialButton(
          //     color: Colors.red,
          //     onPressed: () async {
          //       int response = await sqlDb.insetData(
          //           "INSERT INTO 'notes' ('note') VALUES ('note one') ");
          //       print(response);
          //     },
          //     child: Text(
          //       "insert Table",
          //       style: TextStyle(
          //         color: Colors.white,
          //         fontSize: 30,
          //       ),
          //     ),
          //   ),
          // ),
          SizedBox(
            height: 20,
          ),
          Container(
            child: MaterialButton(
              color: Colors.red,
              onPressed: ()
                async {
                  List<Map?> response = await sqlDb.readData(
                      "SELECT * FROM 'notes' ");
                  print(response);
                },

              child: Text(
                "read Table",
                style: TextStyle(
                  color: Colors.white,fontSize: 30,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            child: MaterialButton(
              color: Colors.red,
              onPressed: () {},
              child: Text(
                "update Table",
                style: TextStyle(
                  color: Colors.white,fontSize: 30,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            child: MaterialButton(
              color: Colors.red,
              onPressed: () {},
              child: Text(
                "delete Table",
                style: TextStyle(
                  color: Colors.white,fontSize: 30,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
