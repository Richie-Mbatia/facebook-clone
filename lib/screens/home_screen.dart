import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_facebook_responsive_ui/config/palette.dart';
import 'package:flutter_facebook_responsive_ui/data/data.dart';
import 'package:flutter_facebook_responsive_ui/widgets/Rooms.dart';
import 'package:flutter_facebook_responsive_ui/widgets/circle_buttons.dart';
import 'package:flutter_facebook_responsive_ui/widgets/create_post_container.dart';
import 'package:flutter_facebook_responsive_ui/widgets/widgets.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
class HomeScreen extends StatelessWidget {
 //const HomeScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar( 
          systemOverlayStyle: SystemUiOverlayStyle.light,
          backgroundColor: Colors.white,
          centerTitle: false,
          title: Text('Facebook',
          style: const TextStyle(
            color: Palette.facebookBlue,
            fontSize: 28.0,
            fontWeight: FontWeight.bold,
            letterSpacing: -1.2,
            ),
          ),
          floating: true,
          //expandedHeight: 110,
          actions: [
            CircleButtons(
            icon: Icons.search,
            iconSize: 30.0, 
            onPressed: () => print('Search'),
            ),
            CircleButtons(
            icon: MdiIcons.facebookMessenger,
            iconSize: 30.0, 
            onPressed: () => print('Messenger'),)
          ],
          ),
          SliverToBoxAdapter(
            child: CreatePostContainer(currentUser: currentUser),
          ),
          SliverPadding(
            padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 5.0),
            sliver: SliverToBoxAdapter(
              child: Rooms(onlineUsers: onlineUsers),
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 5.0),
            sliver: SliverToBoxAdapter(
              child: Stories(currentUser: currentUser, stories: stories),
            ),
          ),

        ],
      ),
    );
  }
}