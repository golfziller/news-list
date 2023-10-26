import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:list_news/cubits/news/news_cubit.dart';
import 'package:list_news/cubits/news/news_state.dart';
import 'package:list_news/theme/colors.dart';

class FetchError extends StatelessWidget {
  const FetchError({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsCubit, Newstate>(
      builder: (context, state) {
        return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Some thing went wrong',
                style: Theme.of(context).textTheme.displayMedium,
              ),
              TextButton(
                child: Text(
                  'Retry',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: AppColors.kSpiritedGreen,
                      ),
                ),
                onPressed: state.isLoading
                    ? null
                    : () {
                        Modular.get<NewsCubit>().fetchNewList();
                      },
              ),
            ],
          ),
        );
      },
    );
  }
}
