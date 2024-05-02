import 'package:flutter/material.dart';

class ComplaintPageScreen extends StatefulWidget {
  const ComplaintPageScreen({Key? key}) : super(key: key);

  @override
  _ComplaintPageScreenState createState() => _ComplaintPageScreenState();
}

class _ComplaintPageScreenState extends State<ComplaintPageScreen> {
  String _complaintType = '';
  String _complaintText = '';
  String _attachedProof = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Raise a Complaint'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Type of Complaint:',
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8.0),
              TextFormField(
                onChanged: (value) {
                  setState(() {
                    _complaintType = value;
                  });
                },
                decoration: InputDecoration(
                  hintText: 'Enter complaint type',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 16.0),
              Text(
                'Complaint Description:',
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8.0),
              TextFormField(
                onChanged: (value) {
                  setState(() {
                    _complaintText = value;
                  });
                },
                maxLines: 5,
                decoration: InputDecoration(
                  hintText: 'Enter your complaint',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 16.0),
              Text(
                'Attach Proof (if any):',
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Expanded(
                    child: TextFormField(
                      onChanged: (value) {
                        setState(() {
                          _attachedProof = value;
                        });
                      },
                      decoration: InputDecoration(
                        hintText: 'Attach proof URL',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  SizedBox(width: 8.0),
                  IconButton(
                    icon: Icon(Icons.attach_file),
                    onPressed: () {
                      // Implement file attachment functionality
                    },
                  ),
                ],
              ),
              SizedBox(height: 32.0),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    // Implement complaint submission logic
                  },
                  child: Text('Submit Complaint'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
