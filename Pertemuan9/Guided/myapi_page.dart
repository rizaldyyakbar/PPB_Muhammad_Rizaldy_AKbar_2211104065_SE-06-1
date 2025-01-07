import 'dart:io';

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

class MyApiPage extends StatefulWidget {
  const MyApiPage({super.key});

  @override
  State<MyApiPage> createState() => _MyApiPageState();
}

class _MyApiPageState extends State<MyApiPage> {
  late CameraController _controller;
  Future<void>? _initializeControllerFuture;

  Future<void> _initializeCamera() async{
    final cameras = await availableCameras();
    final firstCamera = cameras.first;

    _controller = CameraController(
      firstCamera,
      ResolutionPreset.high,
    );
    _initializeControllerFuture = _controller.initialize();
  }

  @override
  void dispose(){
    _controller.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _initializeCamera();
  }

@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Camera Example')),
      body: FutureBuilder<void>(future: _initializeControllerFuture, builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done){
          return CameraPreview(_controller);
        } else{
          return Center(child: CircularProgressIndicator());
        }
      },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
        try {
          await _initializeControllerFuture;
          final image = await _controller.takePicture();
          Navigator.push(
            context, 
            MaterialPageRoute(
              builder: (context) => DisplayPictureScreen(imagePath: image.path),
              ),
          );
        } catch (e) {
          print(e);
        }
      },
      child: Icon(Icons.camera_alt),
      ),
    );
  }
}

class DisplayPictureScreen extends StatelessWidget {
  final String imagePath;

  const DisplayPictureScreen({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Display Picture')),
      body: Image.file(File (imagePath)),
    );
  }
}