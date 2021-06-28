import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:health_plant/model/herbal_plant.dart';

class DetailScreen extends StatelessWidget {
  final HerbalPlant plant;

  const DetailScreen({required this.plant});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      if (constraints.maxWidth < 600) {
        return DetailMobile(plant: plant);
      } else if (constraints.maxWidth < 1000) {
        return DetailWeb(plant: plant, size: 1);
      } else {
        return DetailWeb(plant: plant, size: 2);
      }
    });
  }
}

class DetailMobile extends StatelessWidget {
  final HerbalPlant plant;

  const DetailMobile({required this.plant});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Stack(
              children: <Widget>[
                Image.asset(plant.picture),
                SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.lightGreenAccent,
                          radius: 24,
                          child: IconButton(
                            icon: Icon(
                              Icons.arrow_back,
                              color: Colors.black,
                            ),
                            onPressed: () => Navigator.pop(context),
                          ),
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.lightGreenAccent,
                          radius: 24,
                          child: FavoriteButton(),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Container(
              padding: const EdgeInsets.only(
                top: 32.0,
                left: 32.0,
                right: 32.0,
              ),
              child: Column(
                children: [
                  Container(
                    child: Text(
                      plant.name,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 48.0,
                        fontFamily: 'OleoScript',
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.only(top: 16.0),
                    child: Text(
                      'Rating',
                      style: TextStyle(
                        fontSize: 32.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 16.0),
                    child: Row(
                      children: [
                        Text(
                          "Safety: ",
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          plant.safety,
                          style: TextStyle(fontSize: 16.0),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 16.0),
                    child: Row(
                      children: [
                        Text(
                          "Evidence: ",
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          plant.evidence,
                          style: TextStyle(fontSize: 16.0),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 16.0),
                    child: Text(
                      plant.description,
                      style: TextStyle(fontSize: 16.0),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 16.0, bottom: 32.0),
                    padding: const EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      border: Border(
                        left: BorderSide(
                          color: Colors.lightGreenAccent,
                          width: 5.0,
                        ),
                      ),
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              "Interesting Facts",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16.0,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 16),
                        Text(
                          plant.fact,
                          style: TextStyle(fontSize: 16.0),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class DetailWeb extends StatelessWidget {
  final HerbalPlant plant;
  final int size;

  const DetailWeb({required this.plant, required this.size});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 16,
          horizontal: 64,
        ),
        child: Center(
          child: Container(
            width: 1200,
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: Colors.black,
                        width: 5.0,
                      ),
                    ),
                  ),
                  child: Row(
                    children: [
                      IconButton(
                        icon: Icon(
                          Icons.arrow_back,
                          color: Colors.black,
                        ),
                        onPressed: () => Navigator.pop(context),
                      ),
                      SizedBox(width: 24.0),
                      Container(
                        child: Text(
                          plant.name,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 32.0,
                            fontFamily: 'OleoScript',
                          ),
                        ),
                      ),
                      SizedBox(width: 24.0),
                      FavoriteButton()
                    ],
                  ),
                ),
                SizedBox(height: 32.0),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Expanded(
                      child: Column(
                        children: [
                          Image.asset(plant.picture),
                          if (size == 1) AdditionalWidget(plant: plant),
                          Container(
                            alignment: Alignment.centerLeft,
                            margin: EdgeInsets.only(top: 16.0, bottom: 32.0),
                            padding: const EdgeInsets.all(16.0),
                            decoration: BoxDecoration(
                              color: Colors.grey.shade200,
                              border: Border(
                                left: BorderSide(
                                  color: Colors.lightGreenAccent,
                                  width: 5.0,
                                ),
                              ),
                            ),
                            child: Column(
                              children: [
                                Text(
                                  "Interesting Facts",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16.0,
                                  ),
                                ),
                                SizedBox(height: 16),
                                Text(
                                  plant.fact,
                                  style: TextStyle(fontSize: 16.0),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 32.0),
                        child: Column(
                          children: [
                            if (size == 2) AdditionalWidget(plant: plant),
                            Container(
                              margin: EdgeInsets.only(top: 16.0),
                              child: Text(
                                plant.description,
                                style: TextStyle(fontSize: 16.0),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class AdditionalWidget extends StatelessWidget {
  final HerbalPlant plant;

  const AdditionalWidget({required this.plant});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        alignment: Alignment.centerLeft,
        margin: EdgeInsets.only(top: 16.0),
        child: Text(
          'Rating',
          style: TextStyle(
            fontSize: 32.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      Container(
        margin: EdgeInsets.only(top: 16.0),
        child: Row(
          children: [
            Text(
              "Safety: ",
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              plant.safety,
              style: TextStyle(fontSize: 16.0),
            ),
          ],
        ),
      ),
      Container(
        margin: EdgeInsets.only(top: 16.0),
        child: Row(
          children: [
            Text(
              "Evidence: ",
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              plant.evidence,
              style: TextStyle(fontSize: 16.0),
            ),
          ],
        ),
      ),
    ]);
  }
}

class FavoriteButton extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  bool isFavorite = false;

  void setFavorite() {
    setState(() {
      isFavorite = !isFavorite;
    });
  }

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        isFavorite ? Icons.favorite : Icons.favorite_border,
        color: isFavorite ? Colors.red : Colors.black,
      ),
      onPressed: setFavorite,
    );
  }
}
