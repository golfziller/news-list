import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:list_news/theme/colors.dart';

class SearchNotFound extends StatelessWidget {
  const SearchNotFound({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Not found',
        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
              color: AppColors.kDarkGreen,
            ),
      ),
    );
  }
}
