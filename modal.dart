
import 'package:flutter/material.dart';

class Modal extends StatefulWidget {
  @override
  _ModalState createState() => _ModalState();
}

class _ModalState extends State<Modal> {
  TextEditingController todoCOntroller = TextEditingController();
  createAlert(BuildContext context) {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text("Add TODO LIST"),
          content: TextField(
            controller: todoCOntroller,
            decoration: InputDecoration(hintText: "Add something..."),
          ), // textField
          // content: Image.network("https://i.pinimg.com/originals/f7/d9/c3/f7d9c38016c663c333d4e3734a0087c0.jpg"),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20.0))),
          actions: <Widget>[
            MaterialButton(
              child: Text("Add New", style: TextStyle(color: Colors.pink[300]),),
              onPressed: () {
                Navigator.of(context).pop(todoCOntroller.text.toString()); // oy vea bat modal
              },

            ),
          ],
        );
      }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink[300],
        centerTitle: true,
        title: Text("Modal Dialog"),
      ),
      // backgroundColor: Colors.pink[200],
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.pink,
        child: Icon(Icons.add),
        onPressed: () => createAlert(context),
      ),
      
    );
  }
}