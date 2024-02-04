import 'package:admin_dash_board/core/utils/app_styles.dart';
import 'package:admin_dash_board/presentation/widgets/card_widgets/dots_indicator.dart';
import 'package:admin_dash_board/presentation/widgets/card_widgets/my_cards_page_view.dart';
import 'package:admin_dash_board/presentation/widgets/custom_background_container.dart';
import 'package:flutter/material.dart';

class MyCardsSection extends StatefulWidget {
  const MyCardsSection({super.key});

  @override
  State<MyCardsSection> createState() => _MyCardsSectionState();
}

class _MyCardsSectionState extends State<MyCardsSection> {
  late PageController pageController;
  int currentPageIndex = 0;
  @override
  void initState() {
    super.initState();
    pageController = PageController();
    pageController.addListener(() {
      currentPageIndex = pageController.page!.round();
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      child: Column(
        children: [
          SizedBox(
            width: 420,
            child: Text(
              "My card",
              style: AppStyles.styleSemiBold20(context),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          MyCardsPageView(pageController: pageController),
          const SizedBox(
            height: 20,
          ),
          DotsIndicator(currentPageIndex: currentPageIndex),
        ],
      ),
    );
  }
}
