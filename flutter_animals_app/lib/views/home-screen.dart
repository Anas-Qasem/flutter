import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animals_app/Components/show-images.dart';

class ScreenHome extends StatefulWidget {
  @override
  _ScreenHomeState createState() => _ScreenHomeState();
}

class _ScreenHomeState extends State<ScreenHome> {
  // * audio
  AudioCache cache = AudioCache();
  AudioPlayer player = AudioPlayer();

  // Image
  String backgroundImage = 'assets/Images/animals.jpeg';
  String lionBG = 'assets/Images/lions.jpeg';
  String cheetahBG = 'assets/Images/cheetah.jpeg';
  String wolfBG = 'assets/Images/Wolf.jpeg';
  String elephantBG = 'assets/Images/elephant.jpeg';
  String giraffeBG = 'assets/Images/giraffe.jpeg';
  String crocodileBG = 'assets/Images/crocodile.jpeg';
  String catBG = 'assets/Images/cat.jpeg';
  String dogBG = 'assets/Images/dog.jpeg';
  String parrotBG = 'assets/Images/parrot.jpeg';

  // * audio
  String lionAudio = 'Audios/Lion.mp3';
  String cheetahAudio = 'Audios/Cheetah.mp3';
  String wolfAudio = 'Audios/wolf.wav';
  String elephantAudio = 'Audios/elephant.wav';
  String giraffeAudio = 'Audios/giraffe.mp3';
  String crocodileAudio = 'Audios/crocodile.mp3';
  String catAudio = 'Audios/cat.wav';
  String dogAudio = 'Audios/dog.wav';
  String parrotAudio = 'Audios/parrot.mp3';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Column(
            children: [
              showImages(image: backgroundImage),
              SizedBox(height: 30),
              Expanded(
                child: Column(
                  children: [
                    Row(
                      children: [
                        customButton(
                          title: 'Lion',
                          onClick: () =>
                              clickBtn(bgImage: lionBG, audioPlayer: lionAudio),
                        ),
                        SizedBox(width: 5),
                        customButton(
                          title: 'Cheetah',
                          colorBtn: Colors.amber,
                          onClick: () => clickBtn(
                              bgImage: cheetahBG, audioPlayer: cheetahAudio),
                        ),
                        SizedBox(width: 5),
                        customButton(
                          title: 'Wolf',
                          onClick: () =>
                              clickBtn(bgImage: wolfBG, audioPlayer: wolfAudio),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        customButton(
                          title: 'Elephant',
                          colorBtn: Colors.amber,
                          onClick: () => clickBtn(
                              bgImage: elephantBG, audioPlayer: elephantAudio),
                        ),
                        SizedBox(width: 5),
                        customButton(
                          title: 'Giraffe',
                          onClick: () => clickBtn(
                              bgImage: giraffeBG, audioPlayer: giraffeAudio),
                        ),
                        SizedBox(width: 5),
                        customButton(
                          title: 'Crocodile',
                          colorBtn: Colors.orange,
                          onClick: () => clickBtn(
                            bgImage: crocodileBG,
                            audioPlayer: crocodileAudio,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        customButton(
                          title: 'Cat',
                          onClick: () =>
                              clickBtn(bgImage: catBG, audioPlayer: catAudio),
                        ),
                        SizedBox(width: 5),
                        customButton(
                          title: 'Dog',
                          colorBtn: Colors.orange,
                          onClick: () =>
                              clickBtn(bgImage: dogBG, audioPlayer: dogAudio),
                        ),
                        SizedBox(width: 5),
                        customButton(
                          title: 'Parrot',
                          onClick: () => clickBtn(
                              bgImage: parrotBG, audioPlayer: parrotAudio),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

// * buttons
  Expanded customButton({
    required String title,
    Color colorBtn = Colors.indigo,
    required Function() onClick,
  }) {
    return Expanded(
      child: ElevatedButton(
        onPressed: onClick,
        style: ElevatedButton.styleFrom(
          primary: colorBtn,
          onPrimary: Colors.white,
        ),
        child: Text(title),
      ),
    );
  }

  // event btn
  void clickBtn({required String bgImage, required String audioPlayer}) async {
    setState(() {
      backgroundImage = bgImage;
    });
    cache.clearAll();
    player.stop();
    player = await cache.play(audioPlayer);
  }
}
