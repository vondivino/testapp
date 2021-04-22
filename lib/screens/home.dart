import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<DonationDrive> donations = [
    DonationDrive(
      title: 'Education Drive',
      description: 'Description goes here',
      organizer: 'Buoyr Tech',
    ),
    DonationDrive(
      title: 'For Children',
      description: 'Description goes here',
      organizer: 'Buoyr Tech',
    ),
    DonationDrive(
      title: 'Donate for the Blind Filipinos',
      description: 'Description goes here',
      organizer: 'Buoyr Tech',
    ),
    DonationDrive(
      title: 'Animal Shelter',
      description: 'Description goes here',
      organizer: 'Buoyr Tech',
    ),
    DonationDrive(
      title: 'Environment',
      description: 'Description goes here',
      organizer: 'Buoyr Tech',
    ),
    DonationDrive(
      title: 'Anything you want',
      description: 'Description goes here',
      organizer: 'Buoyr Tech',
    ),
    DonationDrive(
      title: 'Education Drive',
      description: 'Description goes here',
      organizer: 'Buoyr Tech',
    ),
    DonationDrive(
      title: 'For Children',
      description: 'Description goes here',
      organizer: 'Buoyr Tech',
    ),
    DonationDrive(
      title: 'Donate for the Blind Filipinos',
      description: 'Description goes here',
      organizer: 'Buoyr Tech',
    ),
    DonationDrive(
      title: 'Animal Shelter',
      description: 'Description goes here',
      organizer: 'Buoyr Tech',
    ),
    DonationDrive(
      title: 'Environment',
      description: 'Description goes here',
      organizer: 'Buoyr Tech',
    ),
    DonationDrive(
      title: 'Anything you want',
      description: 'Description goes here',
      organizer: 'Buoyr Tech',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: ListView.builder(
            itemCount: donations.length,
            itemBuilder: (context, index) {
              return Card(
                child: ListTile(
                  onTap: () {
                    Navigator.pushNamed(context, '/detail', arguments: {
                      'title': donations[index].title,
                      'description': donations[index].description,
                      'organizer': donations[index].organizer,
                      'amount': donations[index].amount,
                    });
                  },
                  title: Text(donations[index].title),
                  subtitle: Text(donations[index].description),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

class DonationDrive {
  String title;
  String description;
  String organizer;
  double amount;

  DonationDrive({
    this.title,
    this.description,
    this.organizer,
    this.amount = 0.0,
  });
}
