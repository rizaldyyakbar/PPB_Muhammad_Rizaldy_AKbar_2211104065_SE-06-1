import 'package:flutter/material.dart';

class MyPackage extends StatefulWidget {
  const MyPackage({super.key});

  @override
  State<MyPackage> createState() => _MyPackageState();
}

class _MyPackageState extends State<MyPackage> {
  @override
  Widget build(BuildContext context) {
    String? selectedValue;
    final List<String> items = ['Item 1', 'Item 2', 'Item 3'];

    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Belajar Package',
          ),
          backgroundColor: Colors.lightBlue,
        ),
        body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                TextField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    // icon: Icon(Icons.email),
                    hintText: 'Masukkan Email',
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.email),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                TextField(
                  obscureText: true,
                  obscuringCharacter: '*',
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    // icon: Icon(Icons.lock),
                    hintText: 'Masukkan Password',
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.lock),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Elevated Button',
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                TextButton(onPressed: () {}, child: const Text("Text Button")),
                SizedBox(
                  height: 16,
                ),
                DropdownButton<String>(
                  value: selectedValue,
                  hint: Text('Pilih Item'),
                  isExpanded: true,
                  dropdownColor: Colors.white,
                  icon: Icon(Icons.arrow_drop_down),
                  iconSize: 24,
                  elevation: 16,
                  style: TextStyle(color: Colors.black, fontSize: 16),
                  underline: Container(
                    height: 2,
                    color: Colors.grey,
                  ),
                  onChanged: (String? newValue) {
                    setState(() {
                      selectedValue = newValue;
                    });
                  },
                  items: items.map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
              ],
            )));
  }
}
