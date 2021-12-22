import 'package:dastan_final_project/animate.dart';
import 'package:dastan_final_project/beer_info.dart';
import 'package:flutter/material.dart';

class RestoranPage extends StatefulWidget {
  RestoranPage({Key? key}) : super(key: key);

  @override
  _RestoranPageState createState() => _RestoranPageState();
}

class _RestoranPageState extends State<RestoranPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          child: ListTile(
              title: Text(
                'Bochonok Almaty',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              trailing: Image.asset('assets/images/a.jpg')),
        ),
        Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          child: ListTile(
              title: Text(
                'Tomato Almaty',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              trailing: Image.asset('assets/images/b.jpg')),
        ),
        SizedBox(height: 10),
        Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          child: ListTile(
              title: Text(
                'Lik Beer Almaty',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              trailing: Image.asset('assets/images/c.jpg')),
        ),
        Center(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.indigo,
            ),
            onPressed: () {
              Navigator.push(context, AnimationsRoute(page: BeerInfo()));
            },
            child: Container(
              child: Center(
                child: Text(
                  'More',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              height: 35.0,
              width: 195,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0),
                    bottomLeft: Radius.circular(20.0),
                    bottomRight: Radius.circular(20.0),
                  ),
                  color: Colors.indigo),
            ),
          ),
        ),
      ],
    );
  }
}
