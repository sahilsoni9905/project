import 'package:flutter/material.dart';

class DatePicker extends StatefulWidget {
  const DatePicker({Key? key}) : super(key: key);

  @override
  State<DatePicker> createState() => _DatePickerState();
}

class _DatePickerState extends State<DatePicker> {

  void _showDatePicker(){
    showDatePicker(context: context, initialDate: DateTime.now(), firstDate: DateTime(1990), lastDate: DateTime(2005));
  }
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed:_showDatePicker,
      style: const ButtonStyle(
        backgroundColor: MaterialStatePropertyAll<Color>(Colors.white),
      ),
      child: const Text('Date', style: TextStyle(color: Colors.lightBlue),),
    );
  }
}
