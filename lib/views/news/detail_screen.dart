import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:list_news/components/screen_wrapper.dart';
import 'package:list_news/data/models/news_response.dart';
import 'package:list_news/theme/colors.dart';
import 'package:transparent_image/transparent_image.dart';

class NewsDetailScreen extends StatelessWidget {
  const NewsDetailScreen({super.key, required this.article});
  final Article article;
  @override
  Widget build(BuildContext context) {
    return ScreenWrapper(
      title: 'Details',
      automaticallyImplyLeading: true,
      child: SingleChildScrollView(
        child: Column(
          children: [
            if (article.urlToImage != null)
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: FadeInImage.memoryNetwork(
                  placeholder: kTransparentImage,
                  image: article.urlToImage!,
                  fit: BoxFit.cover,
                  height: 250.0,
                ),
              ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    article.title,
                    maxLines: 1,
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          overflow: TextOverflow.ellipsis,
                          color: AppColors.kDarkGreen,
                        ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      article.description ?? '',
                      maxLines: 5,
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            overflow: TextOverflow.ellipsis,
                          ),
                    ),
                  ),
                  if (article.publishedAt != null)
                    Text(
                      'Update At: ${DateFormat('MMM dd yyyy').format(article.publishedAt!.toLocal())}',
                      style: Theme.of(context)
                          .textTheme
                          .bodySmall!
                          .copyWith(color: AppColors.kGraySmoke),
                    ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
