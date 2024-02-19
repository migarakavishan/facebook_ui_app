import 'package:facebook_ui_app/models/model_story.dart';
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

  final List<StoryModel> stories = [
    StoryModel(
        story: "story",
        uid: "uid",
        userImage: "userImage",
        userName: "userName"),
    StoryModel(
        story:
            "https://www.mynrma.com.au/-/media/2021-best-cars-ford-mustang-hero-desktop.jpg?h=501&iar=0&w=1140&hash=4DAA34C7D70E8A1501F91AE808C0B351",
        uid: "100",
        userImage:
            "https://images.pexels.com/photos/1704488/pexels-photo-1704488.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
        userName: "Supun Perera"),
    StoryModel(
        story:
            "https://carnewschina.com/wp-content/uploads/2023/12/001VUOSZgy1hl9lprwxvwj61401hcnpe02.jpg",
        uid: "200",
        userImage:
            "https://images.unsplash.com/photo-1457449940276-e8deed18bfff?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8N3x8cHJvZmlsZXxlbnwwfHwwfHx8MA%3D%3D",
        userName: "John Doe"),
    StoryModel(
        story:
            "https://akm-img-a-in.tosshub.com/businesstoday/images/story/202312/658e5b5ebba32-xiaomi-su7-ev-to-take-on-tesla-293837105-16x9.jpg?size=948:533",
        uid: "300",
        userImage:
            "https://e1.pxfuel.com/desktop-wallpaper/903/679/desktop-wallpaper-97-aesthetic-best-profile-pic-for-instagram-for-boy-instagram-dp-boys.jpg",
        userName: "Jane Smith"),
    StoryModel(
        story:
            "https://d2hucwwplm5rxi.cloudfront.net/wp-content/uploads/2021/12/16101521/Popular-Used-American-Cars-Cover-16-12-420x230.jpg",
        uid: "400",
        userImage:
            "https://pxbar.com/wp-content/uploads/2023/09/instagram-profile-picture.jpg",
        userName: "Michael Johnson"),
  ];

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
          StoriesListView(stories: stories, profilePic: profilePic)
        ],
      ),
    );
  }
}


