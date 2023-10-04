import 'package:flutter/material.dart';

class ListTitleLinkedSocial extends StatefulWidget {
  final String title;
  final bool isLinked;
  final String imagePath;

  ListTitleLinkedSocial(
      {required this.title, required this.imagePath, required this.isLinked});

  @override
  _ListTitleLinkedSocialState createState() => _ListTitleLinkedSocialState();
}

class _ListTitleLinkedSocialState extends State<ListTitleLinkedSocial> {
  bool showPassword = false;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(
          0xFFD6DAF3), // Change this to your desired "light black" color
      child: ConstrainedBox(
        constraints: const BoxConstraints(
          minHeight: 50, // Set a minimum height for the Card
        ),
        child: ListTile(
          leading: Container(
            width: 80,
            height: 80,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors
                  .white, // You can change the background color of the container
            ),
            child: Center(
              child: Image.asset(
                widget.imagePath,
                width:
                    100, // Adjust the width of the image to fit within the container
                height:
                    100, // Adjust the height of the image to fit within the container
              ),
            ),
          ),
          title: Text(
            widget.title,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18, // Adjust the font size for the title
            ),
          ),
          subtitle: Text(
            widget.isLinked ? 'Already linked' : 'Not linked',
            style: const TextStyle(
              fontSize: 14, // Adjust the font size for the subtitle
            ),
          ),
          trailing: widget.isLinked
              ? const Icon(
                  Icons.check_circle,
                  color: Colors.green,
                  size: 30, // Adjust the size of the icon
                )
              : null,
        ),
      ),
    );
  }
}
