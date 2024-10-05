import 'package:flutter/material.dart';
import 'package:qtim_problem/core/utils/utils.dart';
import 'package:qtim_problem/screens/profile/widgets/widgets.dart';

class ProfileSliverAppbar extends StatelessWidget {
  const ProfileSliverAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    return SliverAppBar(
      expandedHeight: 250,
      pinned: true,
      floating: false,
      title: Text(
        s.profile,
        style: Theme.of(context).textTheme.headlineSmall,
      ),
      backgroundColor: const Color(0xFFFAFAFA),
      flexibleSpace: const FlexibleSpaceBar(
        background: AvatarView(),
      ),
    );
  }
}
