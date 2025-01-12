import 'package:audio_wave/audio_wave.dart';
import 'package:flutter/material.dart';

class Detaylar extends StatefulWidget {
  const Detaylar({super.key});

  @override
  State<Detaylar> createState() => _DetaylarState();
}

class _DetaylarState extends State<Detaylar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[300],
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black87,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.favorite,
              color: Colors.black87,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.share,
              color: Colors.black87,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 30),
        child: ListView(
          children: [
            Image.asset(
              "assets/sayfa2.png",
              height: 280,
              fit: BoxFit.fill,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [],
            ),
            Text(
              "İçindeki Gücün Farkına Var.",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              "By Eliza Byres",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "2:32",
                  style: TextStyle(fontSize: 17, color: Colors.lightBlue),
                ),
                SizedBox(
                  width: 30,
                ),
                Expanded(
                  child: AudioWave(
                    height: 100,
                    spacing: 1.4,
                    bars: [
                      AudioWaveBar(heightFactor: 0.2, color: Colors.lightBlue),
                      AudioWaveBar(heightFactor: 0.3, color: Colors.lightBlue),
                      AudioWaveBar(heightFactor: 0.7, color: Colors.lightBlue),
                      AudioWaveBar(heightFactor: 0.8, color: Colors.lightBlue),
                      AudioWaveBar(heightFactor: 0.2, color: Colors.lightBlue),
                      AudioWaveBar(heightFactor: 0.1, color: Colors.lightBlue),
                      AudioWaveBar(heightFactor: 0.3, color: Colors.lightBlue),
                      AudioWaveBar(heightFactor: 0.7, color: Colors.lightBlue),
                      AudioWaveBar(heightFactor: 0.4, color: Colors.lightBlue),
                      AudioWaveBar(heightFactor: 1, color: Colors.lightBlue),
                      AudioWaveBar(heightFactor: 0.1, color: Colors.lightBlue),
                      AudioWaveBar(heightFactor: 0.2, color: Colors.black38),
                      AudioWaveBar(heightFactor: 0.3, color: Colors.black38),
                      AudioWaveBar(heightFactor: 0.4, color: Colors.black38),
                      AudioWaveBar(heightFactor: 0.2, color: Colors.black38),
                      AudioWaveBar(heightFactor: 0.3, color: Colors.black38),
                      AudioWaveBar(heightFactor: 0.7, color: Colors.black38),
                      AudioWaveBar(heightFactor: 0.2, color: Colors.black38),
                      AudioWaveBar(heightFactor: 0.9, color: Colors.black38),
                      AudioWaveBar(heightFactor: 1, color: Colors.black38),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              width: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(onPressed: () {}, icon: Icon(Icons.replay_10)),
                FloatingActionButton(
                  onPressed: () {},
                  backgroundColor: Colors.lightBlue,
                  child: Icon(
                    Icons.play_arrow,
                    color: Colors.white,
                  ),
                ),
                IconButton(onPressed: () {}, icon: Icon(Icons.forward_10)),
              ],
            )
          ],
        ),
      ),
    );
  }
}
