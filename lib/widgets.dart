import 'package:dastan_final_project/beer_model.dart';
import 'package:flutter/material.dart';

class BeerTile extends StatelessWidget {
  final Beer _beer;
  BeerTile(this._beer);

  @override
  Widget build(BuildContext context) => Column(
        children: <Widget>[
          ListTile(
            title: Text(_beer.name),
            subtitle: Text(_beer.tagline),
            leading: Container(
                margin: EdgeInsets.only(left: 6.0),
                child: Image.network(
                  _beer.image_url,
                  height: 50.0,
                  fit: BoxFit.fill,
                )),
          ),
          Divider()
        ],
      );
}
