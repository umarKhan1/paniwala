import 'package:flutter/material.dart';

class DropDownProviders extends ChangeNotifier{
String dropdownInitialValue = "Please Select Vendor";
 var items = [    
    'Please Select Vendor',
    'vendor 1',
    'vendor 2',
    'vendor 3',
    'vendor 4',
  ];

void dropdownvalueChange({String? getvalue}){
  dropdownInitialValue = getvalue!;
  notifyListeners();


}


}