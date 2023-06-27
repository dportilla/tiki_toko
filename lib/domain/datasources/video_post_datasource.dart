import 'package:tiki_toko/domain/entities/video_post.dart';

abstract class VideoPostDataSource {
  Future<List<VideoPost>> getFavoriteVideosByUser(int userID);
  Future<List<VideoPost>> getTrendingVideosByPage(int page);
}