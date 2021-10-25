import 'package:flutter/material.dart';
import 'package:flutter_cube/flutter_cube.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  late Object model; // create an object

  @override
  void initState() {
    model = Object(fileName: "assets/Alien.obj");
    model.position.setValues(0, 10, 12);
    model.lighting;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: const Text(
          "3D in flutter haha",
          style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.w500),
        ),
      ),
      body: Cube(
        onSceneCreated: (Scene scene) {
          scene.world.add(model);
          scene.camera.zoom = 10;
        },
      ),
    );
  }
}
