import 'package:flutter/material.dart';
import 'package:futrent_mobile/components/category_tab.dart';
import 'package:futrent_mobile/components/grid_layout.dart';
import 'package:futrent_mobile/components/primary_app_bar.dart';
import 'package:futrent_mobile/components/primary_search_bar.dart';
import 'package:futrent_mobile/components/section_heading.dart';
import 'package:futrent_mobile/components/sport_card.dart';
import 'package:futrent_mobile/components/tab_bar.dart';
import 'package:futrent_mobile/styles/colors.dart';
import 'package:futrent_mobile/utils/device_utility.dart';

class PlayPage extends StatelessWidget {
  const PlayPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBarPrimary(
          title: Text(
            'Jogar',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
        ),
        body: NestedScrollView(
          headerSliverBuilder: (_, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                  automaticallyImplyLeading: false,
                  pinned: true,
                  floating: true,
                  backgroundColor:
                      DeviceUtility.isDarkMode(context) ? lightBlack : white,
                  expandedHeight: 440,
                  flexibleSpace: Padding(
                    padding: const EdgeInsets.all(24),
                    child: ListView(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      children: [
                        //search bar
                        const SizedBox(
                          height: 16,
                        ),
                        const PrimarySearchBar(
                          text: 'teste',
                          showBorder: true,
                          showBackground: false,
                          padding: EdgeInsets.zero,
                        ),
                        const SizedBox(
                          height: 24,
                        ),

                        //featured sports types
                        SectionHeading(
                          title: 'Categorias',
                          onPressed: () {},
                        ),
                        const SizedBox(
                          height: 24,
                        ),

                        GridLayout(
                            itemCount: 4,
                            mainAxisExtent: 80,
                            itemBuilder: (_, index) {
                              return const SportCard(
                                showBorder: true,
                              );
                            }),
                      ],
                    ),
                  ),

                  // ---TABS
                  bottom: const CustomTabBar(
                    tabs: [
                      Tab(child: Text('Abertos')),
                      Tab(child: Text('Fechados')),
                      Tab(child: Text('Em Promoção')),
                      Tab(child: Text('Infantis')),
                    ],
                  )),
            ];
          },
          body: const TabBarView(
            children: [
              CategoryTab(),
              CategoryTab(),
              CategoryTab(),
              CategoryTab()
            ],
          ),
        ),
      ),
    );
  }
}
