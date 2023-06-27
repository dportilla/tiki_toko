
import 'package:tiki_toko/domain/datasources/video_post_datasource.dart';
import 'package:tiki_toko/domain/entities/video_post.dart';
import 'package:tiki_toko/domain/repositories/video_post_repository.dart';

class VideoPostsRepositoryImpl implements VideoPostRepository {

  final VideoPostDataSource videosDataSource;

  VideoPostsRepositoryImpl({
    required this.videosDataSource
  });



  @override
  Future<List<VideoPost>> getFavoriteVideosByUser(int userID) {

    throw UnimplementedError();
  }

  @override
  Future<List<VideoPost>> getTrendingVideosByPage(int page) {

    return videosDataSource.getTrendingVideosByPage(page);
  }

}