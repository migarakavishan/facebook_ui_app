import 'package:facebook_ui_app/screens/widgets/icon_bar.dart';
import 'package:facebook_ui_app/screens/widgets/new_post_bar.dart';
import 'package:facebook_ui_app/screens/widgets/stories_list_view.dart';
import 'package:facebook_ui_app/screens/widgets/tool_bar.dart';
import 'package:flutter/material.dart';

class FacebookHome extends StatefulWidget {
  const FacebookHome({super.key});

  @override
  State<FacebookHome> createState() => _FacebookHomeState();
}

class _FacebookHomeState extends State<FacebookHome> {
  final profilePic =
      "https://t4.ftcdn.net/jpg/03/64/21/11/360_F_364211147_1qgLVxv1Tcq0Ohz3FawUfrtONzz8nq3e.jpg";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(1.0),
        child: AppBar(
          backgroundColor: Colors.grey.shade900,
        ),
      ),
      backgroundColor: Colors.grey.shade900,
      body: Column(
        children: [
          const ToolBar(),
          IconBar(profilePic: profilePic),
          const Divider(
            thickness: 1,
          ),
          NewPostBar(profilePic: profilePic),
          const Divider(
            color: Colors.black38,
            thickness: 10,
          ),
          StoriesListView(profilePic: profilePic),
          const Divider(
            color: Colors.black38,
            thickness: 10,
          ),
          Column(
            children: [
              Row(
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.blue, width: 2)),
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(profilePic),
                      ),
                    ),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
