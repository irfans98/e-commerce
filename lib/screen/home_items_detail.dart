import 'package:flutter/material.dart';

class ItemsDetail extends StatefulWidget {
  const ItemsDetail({Key? key}) : super(key: key);

  @override
  _ItemsDetailState createState() => _ItemsDetailState();
}

class _ItemsDetailState extends State<ItemsDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff7990DD),
        title: const Text("Items Details"),
        actions: [
          GestureDetector(
            onTap: () {},
            child: const Padding(
              padding: EdgeInsets.only(right: 10),
              child: Icon(
                Icons.search,
              ),
            ),
          ),
        ],
      ),
      body: initScreen(context),
    );
  }
}

initScreen(BuildContext context) {
  return SingleChildScrollView(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Card(
          margin: const EdgeInsets.all(20),
          elevation: 5,
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Center(
              child: Image(
                image: itemImage(),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 20),
          child: Text(
            "Black Turtle Neck Top",
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Row(
          children: [
            Container(
              padding: const EdgeInsets.only(left: 20),
              child: const Text(
                "Rp. 100.000",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                ),
              ),
            ),
            const Spacer(),
            Container(
              padding: const EdgeInsets.only(right: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      primary: const Color(0xff7990DD),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      padding: const EdgeInsets.all(10.0),
                    ),
                    onPressed: () {},
                    icon: const Icon(
                      Icons.star,
                      color: Colors.white,
                    ),
                    label: const Text(
                      "4.5",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(height: 20),
        Container(
          padding: const EdgeInsets.only(left: 20),
          child: const Text(
            "Description",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: const Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam maximus accumsan turpis, at posuere ipsum congue et. In nec vulputate purus. Nulla ultrices dui feugiat, euismod mi quis, ultricies nisl. Aliquam tristique aliquam enim, nec lobortis augue rutrum sit amet.",
            textAlign: TextAlign.justify,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.only(
                bottom: 5, // Space between underline and text
              ),
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.black,
                    width: 1.0, // Underline thickness
                  ),
                ),
              ),
              child: const Text(
                "Select Size",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(width: 20),
            Text(
              "Select Colour",
              style: TextStyle(
                color: Colors.grey.shade500,
              ),
            ),
          ],
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(primary: Colors.white),
              child: const Text(
                "S",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(primary: Colors.white),
              child: const Text(
                "M",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                primary: const Color(0xff7990DD),
              ),
              child: const Text(
                "L",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(primary: Colors.white),
              child: const Text(
                "XL",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(primary: Colors.grey.shade100),
              child: const Text(
                "Add to Cart",
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
            const SizedBox(width: 10),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                primary: const Color(0xff7990DD),
              ),
              child: const Text(
                "Buy Now",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 20)
      ],
    ),
  );
}

ImageProvider itemImage() {
  AssetImage image = const AssetImage("assets/images/mask_group_5.png");
  return image;
}
