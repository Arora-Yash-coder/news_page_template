import 'package:flutter/material.dart';

class MyNewsPage extends StatelessWidget {
  const MyNewsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Creating Layout"),
        elevation: 0.0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () => {
            ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text("Returns to Home Page"))),
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.more,
              color: Colors.black,
            ),
            onPressed: () => {
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                  content: Text("Gives Info About Author of the Page"))),
            },
          ),
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Business".toUpperCase(),
                  style: const TextStyle(
                      color: Colors.red,
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 5.0,
                ),
                const Text(
                  "Dont be afraid to give up on the good to go for the great.",
                  style: TextStyle(
                    fontSize: 35.0,
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Published By Yash Arora",
                      style: TextStyle(color: Colors.grey),
                    ),
                    Text("01, Jan, 2022", style: TextStyle(color: Colors.grey)),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          const Image(
            image: NetworkImage(
                'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
          ),
          const SizedBox(
            height: 15.0,
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: const [
                Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                  style: TextStyle(height: 1.5),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                  style: TextStyle(height: 1.5),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                  style: TextStyle(height: 1.5),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
