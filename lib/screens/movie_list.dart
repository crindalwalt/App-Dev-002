import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

/**
 * two types of widgets
 *  1) Stateless Widget (does not reflect change)
 *  2) StateFull Widget (change UI according to change)
 *
 *  Note:
 *  UI part of the app is contained in build method
 *
 */

class MovieList extends StatefulWidget {
  @override
  State<MovieList> createState() {
    return _MovieListState();
  }
}

class _MovieListState extends State<MovieList> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    //   my code
    String videoUrlString =
        "https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4";
    Uri videoUrl = Uri.parse(videoUrlString);
    _controller = VideoPlayerController.networkUrl(videoUrl)
      ..initialize().then((_) {
        print("video controller is initialized");
        setState(() {});
      });
  }

  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Video Player"),
      ),
      body: Center(
        child: Column(
          children: [
            Center(
              child: _controller.value.isInitialized
                  ? Container(
                      width: double.infinity,
                      height: 300,
                      color: Colors.blue,
                      child: AspectRatio(aspectRatio: _controller.value.aspectRatio,child: new VideoPlayer(_controller),),
                    )
                  : SizedBox(
                      width: 50,
                      height: 50,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CircularProgressIndicator(),
                      )),
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    if(_controller.value.isPlaying){
                      _controller.pause();
                    }else{
                      _controller.play();
                    }
                  });
                },
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    _controller.value.isPlaying?
                    Icon(Icons.pause) : Icon(Icons.play_arrow)  ,
                    _controller.value.isPlaying?
                    Text("Pause Movie") : Text("Play Movie")  ,

                  ],
                )),
          ],
        ),
      ),
    );
  }
}
