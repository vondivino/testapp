import 'package:flutter/material.dart';

class Detail extends StatefulWidget {
  @override
  _DetailState createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  @override
  Widget build(BuildContext context) {
    dynamic data = ModalRoute.of(context).settings.arguments;
    print(data);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: Text(data['title']),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            data['description'],
            style: TextStyle(fontSize: 32.0),
          ),
          Text("Organized by ${data['organizer']}"),
          Text("Total Amount: ${data['amount']} PHP"),
          SizedBox(
            height: 20.0,
          ),
          Text('Comments', style: TextStyle(fontSize: 32.0),),
          Divider(),
          Column(
            children: [
              ListTile(leading: Icon(Icons.message), title: Text('Some comments here'),),
              ListTile(leading: Icon(Icons.message), title: Text('Some comments here'),),
              ListTile(leading: Icon(Icons.message), title: Text('Some comments here'),),
              ListTile(leading: Icon(Icons.message), title: Text('Some comments here'),),
              ListTile(leading: Icon(Icons.message), title: Text('Some comments here'),),
              ListTile(leading: Icon(Icons.message), title: Text('Some comments here'),),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ElevatedButton(onPressed: () {}, child: Text('Donate Now')),
              ElevatedButton(onPressed: () {}, child: Text('Share To Public')),
              ElevatedButton(onPressed: () {}, child: Text('Add to Favorites')),
            ],
          ),
        ],
      ),
    );
  }
}
