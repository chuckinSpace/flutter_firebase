import 'package:flutter/material.dart';
import 'package:flutter_firebase/screens/authenticate/authenticate.dart';
import 'package:flutter_firebase/screens/home/home.dart';
import 'package:provider/provider.dart';
import 'package:flutter_firebase/models/user.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User>(context);

    // return eurhter hoe or autheticate dpeending on auth
    if (user == null) {
      return Authenticate();
    } else {
      return Home();
    }
  }
}
