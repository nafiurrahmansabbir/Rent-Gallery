import 'package:flutter/material.dart';
import 'package:rent_gallery/Details.dart';
import 'package:rent_gallery/Order.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final user='assets/user1.jpg';
    var MyItem=[
      {"img":"assets/1.jpg","title":"Sabbir"},
      {"img":"assets/2.jpg","title":"Sabbir"},
      {"img":"assets/3.jpg","title":"Sabbir"},
      {"img":"assets/4.jpg","title":"Sabbir"},
      {"img":"assets/5.jpg","title":"Sabbir"},

    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text("Rent-Gallery",),
        centerTitle: true,
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.search)),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
                padding: EdgeInsets.all(0),
                child: UserAccountsDrawerHeader(
                  decoration: BoxDecoration(color: Colors.orange),
                  accountName: Text("Annonimus"),
                  accountEmail: Text("annonimus@xyz.y"),
                  currentAccountPicture: Image.asset(user),
                )
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              onTap: (){},
            ),
            ListTile(
              leading: Icon(Icons.account_balance_wallet),
              title: Text("Order"),
              onTap: (){},
            ),
            ListTile(
              leading: Icon(Icons.account_balance_outlined),
              title: Text("Pre-Booking"),
              onTap: (){},
            ),
          ],
        ),

      ),
      body: ListView.builder(
          itemCount: MyItem.length,
          itemBuilder: (context,index){
            return GestureDetector(
              onTap: () {
                // Navigator.of(context).push(MaterialPageRoute(builder: (context) => Details()));
              },
              child: Container(
                margin: EdgeInsets.all(10),
                width: double.infinity,
                height: 650,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      MyItem[index]['img']!,
                    ),
                    SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'For Booking ->',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(width: 10), // Add spacing between text and button
                        ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) => Details(MyItem[index]['img']!)));
                            // Navigator.of(context).push(MaterialPageRoute(builder: (context) => Order()));
                          },
                          child: Text('click'),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );


          }
      ),
    );
  }
}