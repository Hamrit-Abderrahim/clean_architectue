import 'package:clean_architectue/features/home/presentation/views/widgets/featured_list_home_view_otem.dart';
import 'package:flutter/material.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * .3,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const FeaturedListHomeViewItem();
        },
        itemCount: 3,
      ),
    );
  }
}
