import 'package:flutter/material.dart';

class BeerInfo extends StatefulWidget {
  BeerInfo({Key? key}) : super(key: key);

  @override
  _BeerInfoState createState() => _BeerInfoState();
}

class _BeerInfoState extends State<BeerInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Details'),
        centerTitle: true,
        backgroundColor: Colors.indigo,
      ),
      body: Column(
        children: [
          SizedBox(height: 30),
          Card(
              color: Colors.white,
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.info,
                  color: Colors.indigoAccent,
                ),
                title: Text(
                  "Beer is a low-alcohol drink obtained by alcoholic fermentation of malt wort (most often based on barley) with the help of brewer's yeast, usually with the addition of hops. The ethyl alcohol content in most beers is about 3.0-6.0% vol. (strong beer contains, as a rule, from 8.5% to 14% by volume, sometimes light beer is also isolated, which contains 1-2% by volume, non-alcoholic beer is separately isolated, which is not included here), dry matter (mainly carbohydrates) 7-10%, carbon dioxide 0.48-1.0%.",
                  style: TextStyle(
                    color: Colors.teal.shade900,
                    fontSize: 16.0,
                  ),
                ),
              )),
        ],
      ),
    );
  }
}
