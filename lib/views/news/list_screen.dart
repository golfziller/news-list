import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:intl/intl.dart';
import 'package:list_news/components/screen_wrapper.dart';
import 'package:list_news/components/text_feild_custom.dart';
import 'package:list_news/cubits/news/news_cubit.dart';
import 'package:list_news/cubits/news/news_state.dart';
import 'package:list_news/routes/page_name.dart';
import 'package:list_news/theme/colors.dart';
import 'package:list_news/views/news/widget/fetch_error.dart';
import 'package:transparent_image/transparent_image.dart';

class NewsListScreen extends StatefulWidget {
  const NewsListScreen({super.key});

  @override
  State<NewsListScreen> createState() => _NewsListScreenState();
}

class _NewsListScreenState extends State<NewsListScreen> {
  ScrollController? controller;
  Timer? _debounce;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = ScrollController()..addListener(_scrollListener);
    Modular.get<NewsCubit>().fetchNewList();
  }

  @override
  void dispose() {
    _debounce?.cancel();
    controller?.removeListener(_scrollListener);
    super.dispose();
  }

  void _scrollListener() {
    final state = Modular.get<NewsCubit>().state;
    if (controller!.position.extentAfter < 300 &&
        !state.isLoading &&
        state.articles!.length < state.totalResults) {
      Modular.get<NewsCubit>().fetchNewList(loadMore: true);
    }
  }

  onSearchChanged(String query) async {
    if (_debounce?.isActive ?? false) _debounce?.cancel();
    _debounce = Timer(const Duration(milliseconds: 500), () async {
      await Modular.get<NewsCubit>().onSearch(query);
      if (controller != null) {
        controller!.jumpTo(controller!.position.minScrollExtent);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return ScreenWrapper(
      automaticallyImplyLeading: false,
      title: 'News',
      child: BlocBuilder<NewsCubit, Newstate>(
        builder: (context, state) {
          if (state.articles == null) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          return state.isFetchError
              ? const FetchError()
              : Column(
                  children: [
                    // Text(state.articles!.length.toString() +
                    //     '/' +
                    //     state.totalResults.toString() +
                    //     'Page: ${state.page}'),

                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 5),
                      decoration:
                          const BoxDecoration(color: AppColors.kGraySmoke),
                      child: CustomTextField(
                          hintText: 'Search',
                          keyboardType: TextInputType.text,
                          onChanged: onSearchChanged,
                          icon: Icons.search),
                    ),
                    Expanded(
                      child: state.articles!.isEmpty
                          ? Center(
                              child: Text(
                                'Not found',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyLarge!
                                    .copyWith(
                                      color: AppColors.kDarkGreen,
                                    ),
                              ),
                            )
                          : ListView.builder(
                              controller: controller,
                              itemCount: state.articles?.length,
                              itemBuilder: (context, index) {
                                final item = state.articles![index];
                                return GestureDetector(
                                  onTap: () {
                                    FocusManager.instance.primaryFocus!
                                        .unfocus();
                                    Modular.to.pushNamed(PageName.newsDetail,
                                        arguments: item);
                                  },
                                  child: Card(
                                    elevation: 20,
                                    color: Colors.white,
                                    child: Padding(
                                      padding: const EdgeInsets.all(10),
                                      child: Column(
                                        children: [
                                          if (item.urlToImage != null)
                                            SizedBox(
                                              width: MediaQuery.of(context)
                                                  .size
                                                  .width,
                                              child: FadeInImage.memoryNetwork(
                                                placeholder: kTransparentImage,
                                                image: item.urlToImage!,
                                                fit: BoxFit.cover,
                                                height: 250.0,
                                              ),
                                            ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          Text(
                                            item.title,
                                            maxLines: 1,
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyLarge!
                                                .copyWith(
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  color: AppColors.kDarkGreen,
                                                ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 10),
                                            child: Text(
                                              item.description ?? '',
                                              maxLines: 5,
                                              textAlign: TextAlign.center,
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodyMedium!
                                                  .copyWith(
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                  ),
                                            ),
                                          ),
                                          if (item.publishedAt != null)
                                            Text(
                                              'Update At: ${DateFormat('MMM dd yyyy').format(item.publishedAt!.toLocal())}',
                                              textAlign: TextAlign.center,
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodySmall!
                                                  .copyWith(
                                                      color:
                                                          AppColors.kGraySmoke),
                                            ),
                                        ],
                                      ),
                                    ),
                                  ),
                                );
                              },
                            ),
                    )
                  ],
                );
        },
      ),
    );
  }
}
