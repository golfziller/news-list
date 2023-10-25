import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:list_news/theme/colors.dart';

class ScreenWrapper extends StatelessWidget {
  const ScreenWrapper({
    super.key,
    required this.child,
    this.appBar,
    this.prePop,
    this.title,
    this.bottomNavigationBar,
    this.floatingActionButton,
    this.automaticallyImplyLeading = true,
  });
  final Widget child;
  final PreferredSizeWidget? appBar;
  final void Function()? prePop;
  final String? title;
  final bool automaticallyImplyLeading;
  final Widget? bottomNavigationBar;
  final Widget? floatingActionButton;

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.dark,
      child: GestureDetector(
        child: Scaffold(
          floatingActionButton: floatingActionButton,
          bottomNavigationBar: bottomNavigationBar,
          appBar: appBar ??
              AppBar(
                backgroundColor: AppColors.kDarkGreen,
                centerTitle: true,
                automaticallyImplyLeading: automaticallyImplyLeading,
                leading: automaticallyImplyLeading
                    ? GestureDetector(
                        onTap: () {
                          if (prePop != null) prePop!();
                          Navigator.pop(context);
                        },
                        child: const Icon(
                          Icons.arrow_back_ios,
                          color: AppColors.kDarkGreen,
                          size: 24.0,
                        ),
                      )
                    : null,
                title: Text(
                  title ?? '',
                  style: Theme.of(context)
                      .textTheme
                      .displayMedium!
                      .copyWith(color: AppColors.kWhite),
                ),
              ),
          backgroundColor: Colors.white,
          body: SafeArea(child: child),
          key: key,
        ),
        onTap: () {
          FocusManager.instance.primaryFocus?.unfocus();
        },
      ),
    );
  }
}
