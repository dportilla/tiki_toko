import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:tiki_toko/config/helpers/human_formats.dart';
import 'package:tiki_toko/domain/entities/video_post.dart';

class VideoButtons extends StatelessWidget {
  final VideoPost video;
  
  const VideoButtons({
    super.key, 
    required this.video
  });
 
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _CustomIconButton(value: video.likes, iconData: Icons.favorite, color: Colors.red),
        const SizedBox(height: 10),
        _CustomIconButton(value: video.views, iconData: Icons.remove_red_eye_outlined, color: Colors.white),
        const SizedBox(height: 10),
        SpinPerfect(
          infinite: true,
          duration: const Duration(seconds: 5),
          child: const _CustomIconButton(value: 0, iconData: Icons.play_circle, color: Colors.white)
          ),
      ],
    );
  }
}

class _CustomIconButton extends StatelessWidget {

  final int value;
  final IconData iconData;
  final Color color;

  const _CustomIconButton({
    required this.value, 
    required this.iconData, 
    required this.color
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(
          onPressed: () {},
          icon: Icon(iconData, color: color, size: 30,),
        ),

        if (value > 0)
        Text( HumanFormats.humanReadableNumber(value.toDouble()) , style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
        
      ],
    );
  }
}