import 'package:facebook_ui_app/screens/widgets/icon_bar.dart';
import 'package:facebook_ui_app/screens/widgets/new_post_bar.dart';
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
          SizedBox(
            height: 160,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 6,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 100,
                    height: 160,
                    color: Colors.grey.shade600,
                    child: const Stack(
                      children: [],
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
