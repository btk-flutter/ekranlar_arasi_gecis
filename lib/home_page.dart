import 'package:ekranlar_arasi_gecis/second_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  TextEditingController _nameController = TextEditingController();

  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildBody(context),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      title: Text("Ana Sayfa"),
    );
  }

  Widget _buildBody(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildNameTextField(),
            SizedBox(height: 16),
            _buildOpenSecondPageButton(context),
          ],
        ),
      ),
    );
  }

  Widget _buildOpenSecondPageButton(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        _openSecondPage(context);
      },
      child: Text(
        "İkinci Sayfayı Aç",
        style: TextStyle(
          fontSize: 36,
        ),
      ),
    );
  }

  Widget _buildNameTextField() {
    return TextField(
      controller: _nameController,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            width: 5,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            width: 5,
          ),
        ),
        label: Text("Adınızı Girin"),
        labelStyle: TextStyle(
          fontSize: 32,
        ),
      ),
      style: TextStyle(
        fontSize: 32,
      ),
    );
  }

  void _openSecondPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (BuildContext context) => SecondPage(_nameController.text),
      ),
    ).then((value){
      print("Sayfa kapandı");
      print(value);
    });
  }
}
