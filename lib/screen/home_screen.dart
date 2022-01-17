import 'package:ecommerce/screen/auth_screen.dart';
import 'package:ecommerce/screen/home_items_detail.dart';
import 'package:liquid_pull_to_refresh/liquid_pull_to_refresh.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Future<void> _handleRefresh() async {
    return await Future.delayed(Duration(seconds: 2));
  }

  @override
  Widget build(BuildContext context) {
    return initScreen(context);
  }

  initScreen(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff7990DD),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 25),
            child: Icon(Icons.search),
          ),
          Padding(
            padding: EdgeInsets.only(right: 25),
            child: Icon(Icons.favorite_outline),
          ),
          Padding(
            padding: EdgeInsets.only(right: 25),
            child: Icon(Icons.shopping_cart),
          ),
        ],
      ),
      drawer: Drawer(
        child: SafeArea(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 150,
                color: const Color(0xff7990DD),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset(
                      "assets/images/login.png",
                      width: 100,
                      height: 100,
                    ),
                    const Text(
                      "@muirfan98",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              ),
              ListTile(
                onTap: () {},
                leading: const Icon(Icons.home, size: 25),
                title: const Text(
                  "Home",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              ListTile(
                onTap: () {},
                leading: const Icon(Icons.settings, size: 25),
                title: const Text(
                  "Settings",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              ListTile(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AuthScreen(),
                    ),
                  );
                },
                leading: const Icon(Icons.logout, size: 25),
                title: const Text(
                  "Logout",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ],
          ),
        ),
      ),
      body: LiquidPullToRefresh(
        onRefresh: _handleRefresh,
        color: const Color(0xff7990DD),
        animSpeedFactor: 2,
        showChildOpacityTransition: false,
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 10),
          child: ListView(
            children: [
              Row(
                children: [
                  const Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(left: 10, top: 20),
                      child: Text(
                        "Categories",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20, right: 20),
                    child: GestureDetector(
                      onTap: () {},
                      child: const Text(
                        "See All",
                        style: TextStyle(
                          color: Colors.deepPurple,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Container(
                child: itemList(),
              ),
              Row(
                children: [
                  const Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(left: 10, top: 20),
                      child: Text(
                        "Featured",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 20, right: 20),
                    child: GestureDetector(
                      onTap: () {},
                      child: const Text(
                        "See All",
                        style: TextStyle(
                          color: Colors.deepPurple,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Container(
                child: itemList(),
              ),
              Row(
                children: [
                  const Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(left: 10, top: 20),
                      child: Text(
                        "Featured",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 20, right: 20),
                    child: GestureDetector(
                      onTap: () {},
                      child: const Text(
                        "See All",
                        style: TextStyle(
                          color: Colors.deepPurple,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Container(
                child: itemList(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container itemList() {
    return Container(
      height: 250,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          items("assets/images/mask_group_5.png", "Item Price", "Item Desc"),
          items("assets/images/mask_group_6.png", "Item Price", "Item Desc"),
          items("assets/images/mask_group_8.png", "Item Price", "Item Desc"),
          items("assets/images/mask_group_10.png", "Item Price", "Item Desc"),
          items("assets/images/mask_group_11.png", "Item Price", "Item Desc"),
          items("assets/images/mask_group_12.png", "Item Price", "Item Desc"),
        ],
      ),
    );
  }

  items(String img, String title, String desc) {
    AssetImage image = AssetImage(img);
    return Container(
      padding: const EdgeInsets.all(10),
      child: SizedBox(
        width: 130,
        child: Wrap(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ItemsDetail(),
                  ),
                );
              },
              child: Image(image: image),
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ItemsDetail(),
                  ),
                );
              },
              title: Text(
                title,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              subtitle: Text(
                desc,
                style: TextStyle(fontSize: 12),
                textAlign: TextAlign.center,
              ),
            )
          ],
        ),
      ),
    );
  }
}
