import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:list_news/components/screen_wrapper.dart';
import 'package:list_news/cubits/news/news_cubit.dart';

class NewsListScreen extends StatefulWidget {
  const NewsListScreen({super.key});

  @override
  State<NewsListScreen> createState() => _NewsListScreenState();
}

class _NewsListScreenState extends State<NewsListScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Modular.get<NewsCubit>().getTestService();
  }

  @override
  Widget build(BuildContext context) {
    return ScreenWrapper(
      automaticallyImplyLeading: false,
      title: 'News',
      child: Container(
        child: Text('eiei'),
      ),
    );
  }
}
