import 'package:flutter/material.dart';

import 'package:user_list/user_model.dart';
import 'package:user_list/user_network.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Future<UserModel> futureUser;

  @override
  void initState() {
    super.initState();
    futureUser = fetchUser();
  }

  @override
  Widget build(BuildContext context) {
    print('futureUser>> ${futureUser}');
    return Scaffold(
      appBar: AppBar(
        title: Text('Page User'),
      ),
      body: Center(
        child: FutureBuilder<UserModel>(
          future: futureUser,
          builder: (context, snapshot) {
            print('snapshot>> ${snapshot}');
            if (snapshot.hasData) {
              return Text('111');
            } else if (snapshot.hasError) {
              return Text("${snapshot.error}");
            }
            // By default, show a loading spinner.
            return CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}
