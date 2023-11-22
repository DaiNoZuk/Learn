// ignore_for_file: unused_field, prefer_final_fields, prefer_const_constructors

import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

class MyDropdown extends StatefulWidget {
  const MyDropdown({super.key});

  @override
  State<MyDropdown> createState() => _MyDropdownState();
}

class _MyDropdownState extends State<MyDropdown> {
  _MyDropdownState() {
    _selectedValue = _listItem[0];
  }

  final _listItem = [
    "All",
    "item2",
    "item3",
    "item4",
    "item5",
  ];

  String? _selectedValue = '';

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        child: Column(
          children: [
            DropdownButton2(
              iconStyleData: IconStyleData(
                icon: Icon(
                  Icons.keyboard_arrow_down_sharp,
                  size: 16,
                ),
              ),
              buttonStyleData: ButtonStyleData(
                padding: EdgeInsets.only(
                  left: 10,
                  right: 9,
                ),
                width: 224,
                height: 35,
                decoration: BoxDecoration(
                  border: Border.fromBorderSide(
                    BorderSide(
                      width: 1,
                      color: Color(0xFF9D9D9D),
                    ),
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              style: TextStyle(fontSize: 14),
              isExpanded: true,
              value: _selectedValue,
              items: _listItem.map((value) {
                return DropdownMenuItem(
                  child: Text(value),
                  value: value,
                );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  _selectedValue = value as String;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
