import 'package:admin_dash_board/presentation/widgets/card_widgets/my_card.dart';
import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';

class MyCardsPageView extends StatelessWidget {
final PageController pageController;
const MyCardsPageView({
  super.key,
  required this.pageController,

});


  @override
  Widget build(BuildContext context) {
    return ExpandablePageView(
      controller: pageController,
      scrollDirection: Axis.horizontal,
      children: List.generate(
        3,
        (index) => const MyCard(),
      ),
    );
  }
}
