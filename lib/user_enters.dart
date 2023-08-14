import 'package:flutter/material.dart';

class Saved_View extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, // Dark background color
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 50),
            Container(
              height: 80,
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Center(
                  child: Text(
                    "Saved Items",
                    style: TextStyle(
                      fontFamily: 'UberMove',
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                      color: Colors.white, // Text color
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Expanded(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: SingleChildScrollView(
                    child: Container(
                      color: Color.fromRGBO(255, 255, 255, 0.1), // Light gray color
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            ProjectCards(
                                name: "Saved Ayah",
                                raisedAmount: "2",
                                totalAmount: "Surah Name"),
                            ProjectCards(
                                name: "Saved Ayah",
                                raisedAmount: "34",
                                totalAmount: "Surah Name"),
                            ProjectCards(
                                name: "Saved Ayah",
                                raisedAmount: "13",
                                totalAmount: "Surah Name"),
                            ProjectCards(
                                name: "Saved Ayah",
                                raisedAmount: "56",
                                totalAmount: "Surah Name"),
                            ProjectCards(
                                name: "Saved Ayah",
                                raisedAmount: "78",
                                totalAmount: "Surah Name"),
                            ProjectCards(
                                name: "Saved Ayah",
                                raisedAmount: "22",
                                totalAmount: "Surah Name"),
                            ProjectCards(
                                name: "Saved Ayah",
                                raisedAmount: "2",
                                totalAmount: "Surah Name"),
                            ProjectCards(
                                name: "Saved Ayah",
                                raisedAmount: "34",
                                totalAmount: "Surah Name"),
                            ProjectCards(
                                name: "Saved Ayah",
                                raisedAmount: "13",
                                totalAmount: "Surah Name"),
                            ProjectCards(
                                name: "Saved Ayah",
                                raisedAmount: "56",
                                totalAmount: "Surah Name"),
                            ProjectCards(
                                name: "Saved Ayah",
                                raisedAmount: "78",
                                totalAmount: "Surah Name"),
                            ProjectCards(
                                name: "Saved Ayah",
                                raisedAmount: "22",
                                totalAmount: "Surah Name"),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}

class ProjectCards extends StatelessWidget {
  final String name;
  final String raisedAmount;
  final String totalAmount;

  ProjectCards({
    required this.name,
    required this.raisedAmount,
    required this.totalAmount,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          elevation: 10,
          color: Colors.grey[800], // Dark gray color
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.white, // Text color
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Ayah Number: ${raisedAmount}',
                      style: TextStyle(
                        fontSize: 10,
                        color: Colors.greenAccent, // Accent color
                      ),
                    ),
                    Text(
                      'Surah: ${totalAmount} ',
                      style: TextStyle(
                        fontSize: 10,
                        color: Colors.white, // Text color
                      ),
                    ),
                  ],
                ),
                CircleAvatar(
                  radius: 18,
                  backgroundColor: Colors.greenAccent, // Accent color
                  child: Icon(
                    Icons.arrow_forward,
                    color: Colors.white, // Text color
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 10),
      ],
    );
  }
}
