import 'package:admin_dash_board/presentation/widgets/drawer_widgets/active_and_inactive_item.dart';
import 'package:flutter/material.dart';

import '../../../core/model/drawer_item_model.dart';
import '../../../core/model/user_info_model.dart';
import '../../../core/utils/app_images.dart';
import 'drawer_items_list_view.dart';
import 'user_info_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: const CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: UserInfoListTile(
              userInfoModel: UserInfoModel(
                image: Assets.imagesAvatar3,
                title: "User Name",
                subTitle: "hemsGamile@gmail.com",
              ),
            ),
          ),
          SliverToBoxAdapter(child: SizedBox(height: 8)),
          DrawerItemsListView(),

          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Expanded(child: SizedBox()),
                InActiveDrawerItem(
                  drawerItemModel: DrawerItemModel(
                    title: 'Setting system',
                    image: Assets.imagesSettings,
                  ),
                ),
                SizedBox(height: 8),
                InActiveDrawerItem(
                  drawerItemModel: DrawerItemModel(
                    title: ' Logout account',
                    image: Assets.imagesLogout,
                  ),
                ),
                SizedBox(height: 48),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
