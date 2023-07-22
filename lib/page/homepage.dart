import 'package:beeui1/page/edit_profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:beeui1/page/bottom_nav.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

    Color pumpkin = Color(0xFFFC8019);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children:[ SingleChildScrollView(
            padding: EdgeInsets.only(bottom: MediaQuery.of(context).padding.bottom),

            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Container(
                  color: Colors.white10,
                  child: Column(
                    
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            padding:
                                EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                            height: 150,
                            child: Image.asset(
                              'assets/images/img.jpg',
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'John Doe',
                                style: TextStyle(
                                    fontSize: 25, fontWeight: FontWeight.w700),
                              ),
                              const SizedBox(height: 10),
                              Row(
                                children: [
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                        vertical: 5, horizontal: 10),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(12),
                                        color: Color.fromARGB(255, 40, 58, 149)),
                                
                                    
                                    child: Row(
                                      children: [
                                        Icon(Icons.diamond,color: Colors.white,),
                                        Text(
                                          '2,058',
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w300,
                                              color: Colors.white),
                                        )
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                        vertical: 5, horizontal: 10),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(12),
                                        color: Color(0xFF2F3C7E)),
                                    child: Row(
                                      children: [
                                        Icon(Icons.shopping_bag_rounded,color: Colors.white),
                                        Text(
                                          '124',
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w300,
                                              color: Colors.white),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                          IconButton(
                            padding: EdgeInsets.only(left: 30),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => EditProfile()));
                            },
                            icon: Image.asset('assets/images/edit (1).png'),
                            iconSize: 35,
                        
                  
                      
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 20,
                      ),
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                        decoration: BoxDecoration(
                          color: Color(0xFF2F3C7E),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              ' My Vouchers',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w500,color: Colors.white),
                            ),
                            Container(
                              color: Color(0xFF2F3C7E),
                              height: 60,
                              alignment: Alignment.centerRight,
                              padding:
                                  EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                              child: Container(
                                child: Image.asset('assets/images/gift.png'),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 20,
                      ),
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                        decoration: BoxDecoration(
                          color: Color(0xFF2F3C7E),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              ' How Does BeeBag Work?',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w700,color: Colors.white),
                            ),
                            Container(
                              color: Color(0xFF2F3C7E),
                              height: 60,
                              alignment: Alignment.centerRight,
                              padding:
                                  EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                              child: Container(
                                child: Image.asset('assets/images/gift.png'),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 25),
                      child: Text(
                        'Activities',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: 20,
                          letterSpacing: 1,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 25),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Color(0xFFFBEAEB),
                        border: Border.all(
                          color: Color.fromARGB(31, 100, 103, 103),
                          style: BorderStyle.solid,
                        ),
                      ),
                      child: Column(
                        children: [
                          ListTile(
                             dense: true,
                            leading: Icon(
                              Icons.history,
                              color: Colors.black,
                            ),
                            title: Text('Last Visited',style: TextStyle(fontSize: 16),),
                            trailing: Icon(Icons.navigate_next_rounded),
                          ),
                          Divider(
                            thickness: 1,
                            color: Colors.grey[300],
                            indent: 20,
                            endIndent: 20,
                          ),
                          ListTile(
                             dense: true,
                            leading: Icon(  
                              Icons.history_toggle_off,
                              color: Colors.black,
                            ),
                            title: Text('Bee Point History',style: TextStyle(fontSize: 16),),
                            trailing: Icon(Icons.navigate_next_rounded),
                          ),
                          Divider(
                            thickness: 1,
                            color: Colors.grey[300],
                            indent: 20,
                            endIndent: 20,
                          ),
                          ListTile(
                            dense: true,
                            leading: Icon(
                              Icons.card_giftcard,
                              color: Colors.black,
                            ),
                            title: Text('Voucher History',style: TextStyle(fontSize: 16),),
                            trailing: Icon(Icons.navigate_next_rounded),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left:25),
                      child: Text(
                        'Others',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: 20,
                          letterSpacing: 1,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 25),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Color(0xFFFBEAEB),
                        border: Border.all(
                          color: Color.fromARGB(31, 100, 103, 103),
                          style: BorderStyle.solid,
                        ),
                      ),
                      child: Column(
                        children: [
                          ListTile(
                            leading: Icon(
                              Icons.feedback,
                              color: Colors.black,
                            ),
                            title: Text('Feed Back',style: TextStyle(fontSize: 16),),
                            trailing: Icon(Icons.navigate_next_rounded),
                          ),
                          Divider(
                            thickness: 1,
                            color: Colors.grey[300],
                            indent: 20,
                            endIndent: 20,
                          ),
                          ListTile(
                            leading: Icon(
                              Icons.logout,
                              color: Colors.black,
                            ),
                            title: Text('Log Out',style: TextStyle(fontSize: 16),),
                            trailing: Icon(Icons.navigate_next_rounded),
                          ),
                          
                        ],
                      ),
                    ),
                  
                  ]),
                ),
              
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: BottomNav())
        ]),
        
      ),
    );
  }

  
}

