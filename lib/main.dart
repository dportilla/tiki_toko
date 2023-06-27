import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tiki_toko/infrastructure/datasources/local_video_datasource_impl.dart';
import 'package:tiki_toko/infrastructure/repositories/vide_posts_repository_impl.dart';
import 'package:tiki_toko/presentation/providers/discover_provider.dart';
import 'package:tiki_toko/presentation/screens/discover/discover_screen.dart';

import 'config/theme/app_theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    final videoPostReposiry = VideoPostsRepositoryImpl(
      videosDataSource: LocalVideoDataSource()
    );

    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => DiscoverProvider( videosRepository: videoPostReposiry)..loadNextPage() ),
      ],
      child: MaterialApp(
        title: 'Tiki Toko',
        debugShowCheckedModeBanner: false,
        theme: AppTheme().getTheme(),
        home: const DiscoverScreen()
      ),
    );
  }
}
