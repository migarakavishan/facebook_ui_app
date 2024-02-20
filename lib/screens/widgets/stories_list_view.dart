import 'package:facebook_ui_app/models/model_story.dart';
import 'package:flutter/material.dart';

class StoriesListView extends StatelessWidget {
  StoriesListView({
    super.key,
    required this.profilePic,
    
  });

  final String profilePic;

  final List<StoryModel> stories = [
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
    return SizedBox(
      height: 176,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: stories.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 100,
              height: 160,
              decoration: BoxDecoration(
                  color: Colors.grey.shade800,
                  borderRadius: BorderRadius.circular(15)),
              child: index == 0
                  ? Stack(
                      children: [
                        Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                              borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(15),
                                  topRight: Radius.circular(15)),
                              image: DecorationImage(
                                  image: NetworkImage(profilePic),
                                  fit: BoxFit.cover)),
                        ),
                        Positioned(
                          bottom: 45,
                          left: 1,
                          right: 1,
                          child: Container(
                            width: 30,
                            height: 30,
                            decoration: const BoxDecoration(
                                color: Colors.blue, shape: BoxShape.circle),
                            child: const Icon(
                              Icons.add,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        const Align(
                          alignment: Alignment.bottomCenter,
                          child: Text(
                            "Create\nStory",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                          ),
                        )
                      ],
                    )
                  : Stack(
                      children: [
                        Container(
                          width: 100,
                          height: 160,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                  image: NetworkImage(stories[index].story),
                                  fit: BoxFit.cover,
                                  colorFilter: ColorFilter.mode(
                                      Colors.black.withOpacity(0.2),
                                      BlendMode.darken))),
                        ),
                        Positioned(
                          top: 5,
                          left: 5,
                          child: Container(
                            width: 35,
                            height: 35,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border:
                                    Border.all(color: Colors.blue, width: 2)),
                            child: Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: CircleAvatar(
                                backgroundImage:
                                    NetworkImage(stories[index].userImage),
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 5, bottom: 5),
                            child: Text(
                              stories[index].userName,
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        )
                      ],
                    ),
            ),
          );
        },
      ),
    );
  }
}
