import 'package:flutter/material.dart';

class Formproject extends StatefulWidget {
  const Formproject({super.key});

  @override
  State<Formproject> createState() => _FormprojectState();
}

class _FormprojectState extends State<Formproject> {

String? selectedCity;
  List<String> cities = ["New York", "Los Angeles", "Chicago", "Houston", "Phoenix"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Padding(padding: EdgeInsets.all(15),
        child: Form(child: Column(
          children: [
            Container(
            child: TextFormField(
              keyboardType: TextInputType.name,
              textCapitalization: TextCapitalization.words,
              decoration: InputDecoration(
                icon: Icon(Icons.account_circle),
                labelText: "Name",
                hintText: "Enter Your Name"
              ),
            ),
            ),
            Container(
              child: TextFormField(
                keyboardType: TextInputType.numberWithOptions(),
                decoration: InputDecoration(
                  icon: Icon(Icons.phone),
                  labelText: "Contact",
                  hintText: "Enter Your Contact Number",
                ),
              ) ,
            ),
            Container(
              child: TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  icon: Icon(Icons.email_outlined),
                  labelText: "Email",
                  hintText: "Enter Your Email"
                ),
              ),
            ),
            Container(
              child: TextFormField(
                minLines: 3,
                maxLines: null,
                keyboardType: TextInputType.multiline,
                decoration: InputDecoration(
                  icon: Icon(Icons.home_outlined),
                  labelText: "Address",
                  hintText: "Enter Your Address",
                ),
              ),
            ),
            Container(
              child: TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  icon: Icon(Icons.cake_outlined),
                  labelText: "Date Of Birth",
                  hintText: "Enter Your Date Of Birth",
                ),
              ),
            ),
            Container(
              child: DropdownButtonFormField<String>(items: cities.map((String place)
              {
                return DropdownMenuItem<String>(
                  value: place,
                  child: Text(place),
                );
              }
              ).toList(), onChanged: (String? newVal) {
                setState(() {
                  selectedCity = newVal;
                });
              },
              decoration: InputDecoration(
                icon: Icon(Icons.location_on_outlined),
                hintText: "Select Place",
                labelText: "Place",
              ),),
            ),
            Container(
              child: TextFormField(
                obscuringCharacter:'*',
                obscureText: true,
                decoration: InputDecoration(
                  icon: Icon(Icons.password),
                  labelText: "Password"
                ),
              ),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(onPressed: null, child: Text("Submit")),
              ),
            )
          ],
        )),),
      ),
    );
  }
}
