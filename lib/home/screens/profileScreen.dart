import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        centerTitle: true,
        backgroundColor: Colors.lightBlue, // Set app bar color to light blue
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 80,
                backgroundImage: NetworkImage(
                    'https://via.placeholder.com/150'), // Add profile picture URL here
              ),
              SizedBox(height: 20),
              Text(
                'Owner Name',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                'Vehicle Information:',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              _buildInfoItem('Vehicle Make:', 'Toyota'),
              _buildInfoItem('Vehicle Model:', 'Corolla'),
              _buildInfoItem('Vehicle Year:', '2020'),
              SizedBox(height: 20),
              Text(
                'Documents:',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              _buildDocumentItem('Driver\'s License'),
              _buildDocumentItem('Vehicle Registration'),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Add your edit button functionality here
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor:
                      Colors.lightBlue, // Set button color to light blue
                ),
                child: Text('Edit Profile'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildInfoItem(String title, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(fontSize: 16),
          ),
          Text(
            value,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

  Widget _buildDocumentItem(String documentName) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        children: [
          Icon(Icons.description),
          SizedBox(width: 10),
          Text(
            documentName,
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}
