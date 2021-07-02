import 'package:flutter/material.dart';
import 'package:flutter_php/screens/contact.dart';
import 'package:http/http.dart' as http;

import '../env.dart';
import '../models/student.dart';
import '../widgets/form.dart';

class Edit extends StatefulWidget {
  final Student student;

  Edit({this.student});

  @override
  _EditState createState() => _EditState();
}

class _EditState extends State<Edit> {
  // Required for form validations
  final formKey = GlobalKey<FormState>();

  // Handles text onchange
  TextEditingController nameController;
  TextEditingController emailController;
  TextEditingController phoneController;
  TextEditingController addressController;

  // Http post request to update data
  Future editStudent() async {
    return await http.post(
      "${Env.URL_PREFIX}/update.php",
      body: {
        "id": widget.student.id.toString(),
        "name": nameController.text,
        "email": emailController.text,
        "phone": phoneController.text,
        "address": addressController.text
      },
    );
  }

  void _onConfirm(context) async {
    await editStudent();

    // Remove all existing routes until the Home.dart, then rebuild Home.
    Navigator.of(context)
        .pushNamedAndRemoveUntil('/', (Route<dynamic> route) => false);
  }

  @override
  void initState() {
    nameController = TextEditingController(text: widget.student.name);
    emailController = TextEditingController(text: widget.student.email);
    phoneController = TextEditingController(text: widget.student.phone.toString());
    addressController = TextEditingController(text: widget.student.address);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Edit"),
        actions: <Widget>[

          IconButton(
            icon: Icon(Icons.contact_phone),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => contact()),
              );
            },
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: RaisedButton(
          child: Text('CONFIRM'),
          color: Colors.blue,
          textColor: Colors.white,
          onPressed: () {
            _onConfirm(context);
          },
        ),
      ),
      body: Container(
        height: double.infinity,
        padding: EdgeInsets.all(20),
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(12),
            child: AppForm(
              formKey: formKey,
              nameController: nameController,
              emailController: emailController,
              phoneController: phoneController,
              addressController: addressController

            ),
          ),
        ),
      ),
    );
  }
}
