import 'package:flutter/material.dart';
import 'package:beeui1/page/bottom_nav.dart';
class NewUserHome extends StatefulWidget {
  const NewUserHome({Key? key}) : super(key: key);

  @override
  State<NewUserHome> createState() => _NewUserHomeState();
}

class _NewUserHomeState extends State<NewUserHome> {
  // Sample list of logos (you can replace it with your actual data)
  final List<String> logoImages = [
    'assets/images/green.jpg',
    'assets/images/cartify.jpeg',
    'assets/images/fresher.jpg',
    'assets/images/fresh.jpg',
    // Add more logo paths as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: SingleChildScrollView(
        padding: EdgeInsets.only(bottom: MediaQuery.of(context).padding.bottom),
        child: Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Container(
            color: Colors.white10,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                        height: 150,
                        child: Image.asset('assets/images/person1.png'),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'John Doe',
                            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
                          ),
                          const SizedBox(height: 10),
                          Row(
                            children: [
                              Container(
                                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: Color(0xFFFC8019),
                                ),
                                child: Row(
                                  children: [
                                    Icon(Icons.diamond, color: Colors.black),
                                    Text(
                                      '2,058',
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w300,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(width: 10),
                              Container(
                                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: Color(0xFFFC8019),
                                ),
                                child: Row(
                                  children: [
                                    Icon(Icons.shopping_bag_rounded, color: Colors.black),
                                    Text(
                                      '124',
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w300,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                // List of logos wrapped in a horizontal ListView
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Text(
                    "Nearby Partners",
                    style: TextStyle(fontSize: 23, fontFamily: 'Urbanist', fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 70, // Set the height you want for the logo row
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: logoImages.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.symmetric(horizontal: 5),
                        child: Image.asset(logoImages[index]),
                      );
                    },
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Text(
                    "Popular Vouchers",
                    style: TextStyle(fontFamily: 'Urbanist', fontSize: 23, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 10),
                // Customized ListTiles
                CustomizedListTile(
                  imageAsset: 'assets/images/redmart.jpg',
                  title: 'RM3 Voucher by RedMart',
                  subtitleLine1: 'Min. Spend:RM50',
                  subtitleLine2: 'Valid till: 30 June 2022',
                  trailing: ElevatedButton(
                    onPressed: () {
                      // Handle Voucher 1 tap here
                    },
                     child : Text('Buy Now'),
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFFFC8019), // Button color
                      onPrimary: Colors.black, // Text color
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                CustomizedListTile(
                  imageAsset: 'assets/images/cartify.jpeg',
                  title: 'RM3 Voucher by Cartify',
                  subtitleLine1: 'Min. Spend:RM50',
                  subtitleLine2: 'Valid till: 30 June 2022',

                  trailing: ElevatedButton(
                    onPressed: () {
                      // Handle Voucher 2 tap here
                    },
                    child: Text('Buy Now'),
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFFFC8019), // Button color
                      onPrimary: Colors.black,// Text color
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                CustomizedListTile(
                  imageAsset: 'assets/images/fresher.jpg',
                  title: 'RM3 Voucher by Freshers',
                  subtitleLine1: 'Min. Spend:RM50',
                  subtitleLine2: 'Valid till: 30 June 2022',
                  trailing: ElevatedButton(
                    onPressed: () {
                      // Handle Voucher 3 tap here
                    },
                    child: Text('Buy Now'),
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFFFC8019), // Button color
                      onPrimary: Colors.black,// Text color
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Align(
        alignment: Alignment.bottomCenter,
        child: BottomNav(),
      ),
    );
  }
}
class CustomizedListTile extends StatelessWidget {
  final String imageAsset;
  final String title;
  final String subtitleLine1;
  final String subtitleLine2;
  final Widget trailing;

  const CustomizedListTile({
    required this.imageAsset,
    required this.title,
    required this.subtitleLine1,
    required this.subtitleLine2,
    required this.trailing,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 10,
      child: SizedBox(
        width: double.infinity,
        height: 100,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 12.0),
          child: Row(
            children: [
              Container(
                width: 80,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: Image.asset(imageAsset),
              ),
              VerticalDivider(
                color: Colors.grey,
                thickness: 1,
                width: 1,
              ),
              Expanded(
                child: ListTile(
                  title: Text(
                    title,
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        subtitleLine1,
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                        ),
                      ),
                      Text(
                        subtitleLine2,
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  trailing: Container(
                    height: 50,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            // Handle button tap
                          },
                          child: Text(
                            'Buy Now',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: Color(0xFFFC8019),
                            onPrimary: Colors.black,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
