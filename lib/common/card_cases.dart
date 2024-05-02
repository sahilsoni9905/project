import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intel_traffic/common/complaint_screen.dart';
import 'package:intel_traffic/providers/providers.dart';

class CardDesigner extends ConsumerStatefulWidget {
  const CardDesigner({Key? key, required this.amount, required this.location})
      : super(key: key);

  final String amount;
  final String location;

  @override
  _CardDesignerState createState() => _CardDesignerState();
}

class _CardDesignerState extends ConsumerState<CardDesigner> {
  @override
  Widget build(BuildContext context) {
    // final ref = watch(cartProvider);

    return Card(
      elevation: 4,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 255, 111, 97),
              Color.fromARGB(255, 242, 190, 92),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              'Traffic Violation',
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  _buildViolation('Speeding'),
                  _buildViolation('Running Red Light'),
                  _buildViolation('Illegal Parking'),
                ],
              ),
            ),
            Text(
              'Fine Amount: Rs ${widget.amount}',
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (ctx) => ComplaintPageScreen(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    // onPrimary: Color.fromARGB(255, 255, 111, 97),
                    textStyle:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  child: Text('Issue Ticket'),
                ),
                ElevatedButton(
                  onPressed: () {
                    ref.watch(cartProvider).removeFromCart(widget.location);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    // onPrimary: Color.fromARGB(255, 255, 111, 97),
                    textStyle:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  child: Text('Pay Fine'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _buildViolation(String violation) {
    return Row(
      children: [
        Icon(Icons.error, color: Colors.white),
        SizedBox(width: 10),
        Text(
          violation,
          style: TextStyle(fontSize: 16, color: Colors.white),
        ),
      ],
    );
  }
}
