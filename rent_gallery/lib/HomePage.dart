import 'package:flutter/material.dart';
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
              onTap: (){},
              child: Container(
                margin: EdgeInsets.all(10),
                width: double.infinity,
                height: 500,
                child: Image.asset(MyItem[index]['img']!,),

// fdf
                // Image.asset(MyItem[index]['img']!,fit: BoxFit.fill,),
                // Image.asset(pic),
                // Image.network(MyItem[index]['img']!),
              ),


            );


          }
      ),
    );
  }
}