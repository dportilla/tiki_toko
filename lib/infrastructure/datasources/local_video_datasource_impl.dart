import 'package:tiki_toko/domain/datasources/video_post_datasource.dart';
import 'package:tiki_toko/infrastructure/models/local_video_model.dart';

import '../../domain/entities/video_post.dart';
import '../../shared/data/local_video_post.dart';

class LocalVideoDataSource implements VideoPostDataSource {
  @override
  Future<List<VideoPost>> getFavoriteVideosByUser(int userID) {
    throw UnimplementedError();
  }

  @override
  Future<List<VideoPost>> getTrendingVideosByPage(int page) async {
    await Future.delayed(const Duration(seconds: 2));

    final List<VideoPost> newVideos = videoPosts.map(
      (video) => LocalVideoModel.fromJson(video).toVideoPostEntity())
      .toList();
      
    return newVideos;
  }
}