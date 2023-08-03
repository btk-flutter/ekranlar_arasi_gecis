import 'package:ekranlar_arasi_gecis/home_page.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  String name;

  SecondPage(this.name);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        return Future.value(true);
      },
      child: Scaffold(
        appBar: _buildAppBar(),
        body: _buildBody(context),
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      title: Text("İkinci Sayfa"),
      automaticallyImplyLeading: false,
    );
  }

  Widget _buildBody(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildNameText(),
          _buildCloseButton(context),
        ],
      ),
    );
  }

  Widget _buildNameText() {
    return Text(
      name,
      style: TextStyle(
        fontSize: 36,
      ),
    );
  }

  Widget _buildCloseButton(BuildContext context) {
    return TextButton(
      onPressed: () {
        _closePage(context);
      },
      child: Text(
        "Kapat",
        style: TextStyle(
          fontSize: 36,
        ),
      ),
    );
  }

  void _closePage(BuildContext context) {
    print("Kapata Tıklandı");
    Navigator.pop(context);
  }
}
