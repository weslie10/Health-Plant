import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:health_plant/model/herbal_plant.dart';
import 'package:health_plant/detail_screen.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreenAccent,
        title: Text(
          "Health Plant",
          style: TextStyle(
            fontSize: 32.0,
            fontWeight: FontWeight.bold,
            fontFamily: "OleoScript",
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 32.0),
            child: TextButton(
              onPressed: () => showDialog<String>(
                context: context,
                builder: (BuildContext context) => AlertDialog(
                  title: const Text('Credits'),
                  content: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'I get the data from ',
                          style: TextStyle(color: Colors.black),
                        ),
                        TextSpan(
                          text: 'this website',
                          style: TextStyle(color: Colors.blue),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () async {
                              var url =
                                  'https://www.healthline.com/health/most-powerful-medicinal-plants';
                              if (await canLaunch(url)) {
                                await launch(url);
                              } else {
                                throw 'Could not launch $url';
                              }
                            },
                        ),
                      ],
                    ),
                  ),
                  actions: <Widget>[
                    TextButton(
                      onPressed: () => Navigator.pop(context, 'OK'),
                      child: const Text('OK'),
                    ),
                  ],
                ),
              ),
              child: const Text(
                'Credits',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.blue,
                ),
              ),
            ),
          ),
        ],
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth < 600) {
            return PlantListView();
          } else if (constraints.maxWidth < 1200) {
            return PlantGridView(grid: 4);
          } else {
            return PlantGridView(grid: 6);
          }
        },
      ),
    );
  }
}

class PlantListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 32.0),
      child: ListView.builder(
        itemBuilder: (context, index) {
          final HerbalPlant plant = listPlant[index];
          return InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return DetailScreen(plant: plant);
              }));
            },
            child: Card(
              borderOnForeground: true,
              shadowColor: Colors.lightGreenAccent,
              elevation: 5.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              margin:
                  const EdgeInsets.only(bottom: 32.0, left: 32.0, right: 32.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 2,
                    child: Image.asset(
                      plant.picture,
                      fit: BoxFit.cover,
                      height: 100,
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Container(
                      alignment: Alignment.centerLeft,
                      height: 100,
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          plant.name,
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
        itemCount: listPlant.length,
      ),
    );
  }
}

class PlantGridView extends StatelessWidget {
  final int grid;

  PlantGridView({required this.grid});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 32.0, left: 32.0, right: 32.0),
      child: GridView.count(
        crossAxisCount: grid,
        crossAxisSpacing: 16.0,
        mainAxisSpacing: 16.0,
        children: listPlant.map((plant) {
          return InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return DetailScreen(plant: plant);
              }));
            },
            child: Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    child: Image.asset(
                      plant.picture,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      plant.name,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
