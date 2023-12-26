import 'package:flutter/material.dart';
import 'package:futrent_mobile/components/brand_title_with_verified_icon.dart';
import 'package:futrent_mobile/components/containers/rounded_container.dart';
import 'package:futrent_mobile/components/grid_layout.dart';
import 'package:futrent_mobile/components/images/circular_image.dart';
import 'package:futrent_mobile/components/primary_app_bar.dart';
import 'package:futrent_mobile/components/primary_search_bar.dart';
import 'package:futrent_mobile/components/section_heading.dart';
import 'package:futrent_mobile/styles/colors.dart';
import 'package:futrent_mobile/utils/device_utility.dart';
import 'package:futrent_mobile/utils/enums/enums.dart';

class PlayPage extends StatelessWidget {
  const PlayPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    DeviceUtility.isDarkMode(context) ? black : white,
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
                            return GestureDetector(
                              child: RoundedContainer(
                                padding: const EdgeInsets.all(8),
                                showBorder: true,
                                backgroundColor: Colors.transparent,
                                child: Row(
                                  children: [
                                    Flexible(
                                      child: CircularImage(
                                        isNetworkImage: false,
                                        image: 'assets/images/soccerball.png',
                                        backgroundColor: Colors.transparent,
                                        overlayColor:
                                            DeviceUtility.isDarkMode(context)
                                                ? white
                                                : black,
                                      ),
                                    ),
                                    const SizedBox(width: 12),
                                    Expanded(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const BrandTitleWithVerifiedIcon(
                                              title: 'teste',
                                              textSizes: TextSizes.large),
                                          Text('256 locaisasdas',
                                              overflow: TextOverflow.ellipsis,
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .labelMedium),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            );
                          }),
                    ],
                  ),
                )),
          ];
        },
        body: Container(),
      ),
    );
  }
}
