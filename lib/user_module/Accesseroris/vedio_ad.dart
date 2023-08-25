import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
class vd_ad extends StatefulWidget {
  const vd_ad({super.key,});
  final String videoUrl='https://pin.it/37pU2p9';
  @override
  State<vd_ad> createState() => _vd_adState();
}

class _vd_adState extends State<vd_ad> {
  late VideoPlayerController _videoPlayerController;
  late Future<void> _initializeVedioPlayerFuture;
  @override
  void initState(){
    _videoPlayerController=VideoPlayerController.network(widget.videoUrl);
    _initializeVedioPlayerFuture=_videoPlayerController.initialize().then((_)  {
      _videoPlayerController.play();
      _videoPlayerController.setLooping(true);
      setState((){});
    });
    super.initState();
  }
  @override
  void dispose(){
    _videoPlayerController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _initializeVedioPlayerFuture,
        builder:(context,snapshot){
        if (snapshot.connectionState==ConnectionState.done) {
          return AspectRatio(
              aspectRatio:_videoPlayerController.value.aspectRatio,
              child:VideoPlayer(_videoPlayerController),);
        }
        else{
          return Center(
            child: CircularProgressIndicator(),
          );
        }
        });
  }
}
