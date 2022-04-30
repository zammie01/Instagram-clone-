import 'package:flutter/material.dart';

class UserShop extends StatefulWidget {
  const UserShop({Key? key}) : super(key: key);

  @override
  _UserShopState createState() => _UserShopState();
}

class _UserShopState extends State<UserShop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('SHOP')),
    );
  }
}
