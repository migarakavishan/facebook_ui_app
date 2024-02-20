import 'package:facebook_ui_app/models/post_model.dart';
import 'package:flutter/material.dart';

class PostListView extends StatelessWidget {
  PostListView({
    super.key,
    required this.profilePic,

  });

  final String profilePic;
  
  
  

  List<PostModel> posts = [
    PostModel(
        post:
            "https://m.media-amazon.com/images/M/MV5BMTg5NzY0MzA2MV5BMl5BanBnXkFtZTYwNDc3NTc2._V1_FMjpg_UX1000_.jpg",
        time: "7 h",
        caption: "car",
        userImage:
            "https://imgv3.fotor.com/images/blog-richtext-image/10-profile-picture-ideas-to-make-you-stand-out.jpg",
        uid: "100",
        username: "Gina Bowman",
        type: "updated cover photo"),
    PostModel(
        post:
            "https://theinsatiabletraveler.com/wp-content/uploads/2019/05/Breathtaking_Views_-14.jpg",
        time: "17 h",
        caption: "Stunning view",
        userImage:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ3HWiMNcayzEoGFI70CWs-4GRnFFMgIcR4Ig&usqp=CAU",
        uid: "101",
        username: "John Doe",
        type: "posted an update"),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: posts.length,
        itemBuilder: (context, index) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
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
                          backgroundImage: NetworkImage(posts[index].userImage),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            posts[index].username,
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                height: 0.8,
                                fontWeight: FontWeight.w500),
                          ),
                          Text(
                            posts[index].type,
                            style: const TextStyle(color: Colors.grey),
                          ),
                          Row(
                            children: [
                              Text(
                                posts[index].time,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 13,
                                ),
                              ),
                              const SizedBox(
                                width: 4,
                              ),
                              Icon(
                                Icons.public,
                                color: Colors.grey.shade700,
                                size: 13,
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    const Spacer(
                      flex: 1,
                    ),
                    const Icon(
                      Icons.more_horiz,
                      color: Colors.white,
                    )
                  ],
                ),
              ),
              Image.network(
                posts[index].post,
                fit: BoxFit.cover,
              ),
              const SizedBox(
                height: 5,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "1.2K",
                    style: TextStyle(color: Colors.grey),
                  ),
                  Text(
                    "845 Comments",
                    style: TextStyle(color: Colors.grey),
                  ),
                  Text(
                    "421 Shares",
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
              const Divider(
                thickness: 0.2,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ActionButton(icon: Icons.thumb_up_alt_outlined, text: "Like"),
                  ActionButton(icon: Icons.comment, text: "Comment"),
                  ActionButton(icon: Icons.reply, text: "Share"),
                ],
              ),
              Divider(
                height: 50,
                thickness: 0.5,
                color: Colors.grey.shade900,
              )
            ],
          );
        });
  }
}

class ActionButton extends StatelessWidget {
  const ActionButton({super.key, required this.icon, required this.text});

  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color: Colors.grey,
        ),
        const SizedBox(
          width: 2,
        ),
        Text(
          text,
          style: const TextStyle(color: Colors.grey),
        )
      ],
    );
  }
}
