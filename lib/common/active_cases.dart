import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intel_traffic/providers/providers.dart';

class ActiveCaseScreen extends ConsumerStatefulWidget {
  const ActiveCaseScreen({Key? key}) : super(key: key);

  @override
  _ActiveCaseScreenState createState() => _ActiveCaseScreenState();
}

class _ActiveCaseScreenState extends ConsumerState<ActiveCaseScreen> {
  @override
  Widget build(BuildContext context) {
    setState(() {});
    final myCases = ref.watch(cartProvider).myCart;

    return Scaffold(
      appBar: AppBar(
        title: Text('Active Cases'),
      ),
      body: ListView.builder(
        itemCount: myCases.length,
        itemBuilder: (BuildContext context, int index) {
          return myCases[index];
        },
      ),
    );
  }
}
