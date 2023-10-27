import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:intl/intl.dart';
import 'package:list_news/data/models/news_response.dart';
import 'package:list_news/routes/page_name.dart';
import 'package:list_news/theme/colors.dart';
import 'package:transparent_image/transparent_image.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({super.key, required this.item});
  final Article item;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus!.unfocus();
        Modular.to.pushNamed(PageName.newsDetail, arguments: item);
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
                  width: MediaQuery.of(context).size.width,
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
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      overflow: TextOverflow.ellipsis,
                      color: AppColors.kDarkGreen,
                    ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  item.description ?? '',
                  maxLines: 5,
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        overflow: TextOverflow.ellipsis,
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
                      .copyWith(color: AppColors.kGraySmoke),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
