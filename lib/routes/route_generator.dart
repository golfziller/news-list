// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:list_news/cubits/news/news_cubit.dart';
// import 'package:list_news/data/network/api_service.dart';
// import 'package:list_news/routes/page_name.dart';
// import 'package:list_news/views/news/list_screen.dart';

// class RouteGenerator {
//   Route<dynamic> generateRoute(
//       RouteSettings settings, ) {
//     final args = settings.arguments;

//     switch (settings.name) {
//       case PageName.newsList:
//         return MaterialPageRoute(
//           builder: (_) => 
//            BlocProvider<NewsCubit>.value(
//             value: NewsCubit(),
//             child: const NewsListScreen(),
//           ),
//         );

//       // case PageName.newsDetail:
//       //   return MaterialPageRoute(
//       //     builder: (context) {
//       //       return NewsDetailSliderScreen(newsList: args as List<Article>);
//       //     },
//       //   );

//       default:
//         return _errorRoute();
//     }
//   }

//   static Route<dynamic> _errorRoute() {
//     return MaterialPageRoute(builder: (_) {
//       return Scaffold(
//         appBar: AppBar(
//           title: const Text('Error'),
//         ),
//         body: const Center(
//           child: Text('Error while loading new page'),
//         ),
//       );
//     });
//   }
// }
