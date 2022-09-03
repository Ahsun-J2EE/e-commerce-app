import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:my_app_ecommerce/screens/login.dart';
import 'package:my_app_ecommerce/screens/profile.dart';
import 'package:my_app_ecommerce/screens/top_category.dart';
import 'package:my_app_ecommerce/screens/top_seller.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var searchFieldController= TextEditingController();
  final _formkey= GlobalKey <FormState>();
  var drawerList=['Home', 'Profile', 'Top Sellers', 'Top Categories', 'Messages', 'Wallet', 'Logout'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 70,
          shadowColor: Colors.white,
          elevation: 0,
        title: Form(
          key: _formkey,
          child: Container(
            height: 40,
            width: double.infinity,
            child: Center(
              child: TextFormField(
                keyboardType: TextInputType.text,
                controller: searchFieldController,
                decoration: InputDecoration(
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(15), borderSide: BorderSide(color: Colors.black)),
                  prefixIcon: Icon(Icons.search, color: Colors.grey,),
                  hintText: 'Search',
                  contentPadding: EdgeInsets.all(3)
                ),
              ),
            ),
          ),
        ),
          actions: [
            IconButton(
                onPressed: (){},
                icon: Icon(Icons.notifications_outlined))
          ]
        ),
      drawer: Drawer(
        child: ListView(
          children: [
            Container(
              height: 95,
              width: double.infinity,
              margin: EdgeInsets.only(bottom: 20, top: 30, left: 20),
              child: Row(
                children:[
                  Container(
                    height: 55,
                    width: 55,
                     decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                      image: DecorationImage(
                          image: NetworkImage('https://www.csmbangladesh.com/images/meet-the-team/3063-habib-bhai.jpg'),
                      fit: BoxFit.cover)
                    ),
                  ),
                  Container(
                    height: 90,
                    width: 200,
                    padding: EdgeInsets.only(top: 5),
                    child: UserAccountsDrawerHeader(
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        border: Border.all(color: Colors.white)
                      ),
                      accountName: Text('Khandaker Ahsun Habib', style: TextStyle(color: Colors.black),),
                      accountEmail: Text('habib@gmail.com', style: TextStyle(color: Colors.grey),),
                    ),
                  )
                ],
              ),
            ),
            Divider(height: 1,),
            ListTile(
              dense: true,
              contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
              visualDensity: VisualDensity(horizontal: 0, vertical: -4),
              horizontalTitleGap: 0.0,
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
              },
              title: Text(drawerList[0], style: TextStyle(color: Colors.grey.shade500, fontSize: 16),),
              leading: Icon(Icons.home_outlined, color: Colors.grey.shade400, size: 23,),
            ),
            ListTile(
              dense: true,
              contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
              visualDensity: VisualDensity(horizontal: 0, vertical: -4),
              horizontalTitleGap: 0.0,
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>ProfilePage()));
              },
              title: Text(drawerList[1], style: TextStyle(color: Colors.grey.shade500, fontSize: 16),),
              leading: Icon(Icons.person_outline, color: Colors.grey.shade400, size: 23,),
            ),
            ListTile(
              dense: true,
              contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
              visualDensity: VisualDensity(horizontal: 0, vertical: -4),
              horizontalTitleGap: 0.0,
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>TopSeller()));
              },
              title: Text(drawerList[2], style: TextStyle(color: Colors.grey.shade500, fontSize: 16),),
              leading: Icon(Icons.sell_outlined, color: Colors.grey.shade400, size: 23,),
            ),
            ListTile(
              dense: true,
              contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
              visualDensity: VisualDensity(horizontal: 0, vertical: -4),
              horizontalTitleGap: 0.0,
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>TopCategories()));
              },
              title: Text(drawerList[3], style: TextStyle(color: Colors.grey.shade500, fontSize: 16),),
              leading: Icon(Icons.checklist_rtl_outlined, color: Colors.grey.shade400, size: 23,),
            ),
            ListTile(
              dense: true,
              contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
              visualDensity: VisualDensity(horizontal: 0, vertical: -4),
              horizontalTitleGap: 0.0,
              onTap: (){},
              title: Text(drawerList[4], style: TextStyle(color: Colors.grey.shade500, fontSize: 16),),
              leading: Icon(Icons.messenger_outline, color: Colors.grey.shade400, size: 23,),
            ),
            ListTile(
              dense: true,
              contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              visualDensity: VisualDensity(horizontal: 0, vertical: -4),
              horizontalTitleGap: 0.0,
              onTap: (){},
              title: Text(drawerList[5], style: TextStyle(color: Colors.grey.shade500, fontSize: 16),),
              leading: Icon(Icons.account_balance_wallet_outlined, color: Colors.grey.shade400, size: 23,),
            ),
            Divider(height: 0,),
            ListTile(
              dense: true,
              contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
              visualDensity: VisualDensity(horizontal: 0, vertical: -4),
              horizontalTitleGap: 0.0,
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()));
              },
              title: Text(drawerList[6], style: TextStyle(color: Colors.grey.shade500, fontSize: 16),),
              leading: Icon(Icons.login_outlined, color: Colors.grey.shade400, size: 23,),
            ),
          ],
        ) ,
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 130,
                padding: EdgeInsets.all(10),
                width: double.infinity,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                    child: SizedBox.fromSize(
                        child: Image.network('https://static.vecteezy.com/system/resources/thumbnails/003/240/364/small/shopping-online-on-phone-paper-art-modern-pink-background-gifts-box-free-vector.jpg',fit: BoxFit.cover,))),
              ),// banner image
              Container(
                width: double.infinity,
                height: 80,
                margin: EdgeInsets.only(left: 10, right: 10, top: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 70,
                      width: 66,
                      child: Column(
                        children: [
                          InkWell(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>TopCategories()));
                            },
                            child: Container(
                              height:50,
                              width: 45,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.grey.shade300
                                  ),
                                  shape: BoxShape.circle
                              ),
                              child: Icon(Icons.category_outlined,size: 22, color: Colors.red,),
                            ),
                          ),
                          InkWell(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>TopCategories()));
                            },
                            child: Container(
                              margin: EdgeInsets.only(top: 5),
                                child: Text('Top Categories', style: TextStyle(fontSize: 9.7, color: Colors.grey))
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 70,
                      width: 60,
                      child: Column(
                        children: [
                          InkWell(
                            onTap: (){},
                            child: Container(
                              height:50,
                              width: 45,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.grey.shade300
                                  ),
                                  shape: BoxShape.circle
                              ),
                              child: Icon(Icons.branding_watermark_outlined,size: 22, color: Colors.green,),
                            ),
                          ),
                          InkWell(
                            onTap: (){},
                            child: Container(
                                margin: EdgeInsets.only(top: 5),
                                child: Text('Brands', style: TextStyle(fontSize: 11, color: Colors.grey),)
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 70,
                      width: 60,
                      child: Column(
                        children: [
                          InkWell(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>TopSeller()));
                            },
                            child: Container(
                              height:50,
                              width: 45,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.grey.shade300
                                  ),
                                  shape: BoxShape.circle
                              ),
                              child: Icon(Icons.sell_outlined,size: 22, color: Colors.amber,),
                            ),
                          ),
                          InkWell(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>TopSeller()));
                            },
                            child: Container(
                                margin: EdgeInsets.only(top: 5),
                                child: Text('Top Sellers', style: TextStyle(fontSize: 11, color: Colors.grey),)
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 70,
                      width: 60,
                      child: Column(
                        children: [
                          InkWell(
                            onTap: (){},
                            child: Container(
                              height:50,
                              width: 45,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.grey.shade300
                                  ),
                                  shape: BoxShape.circle
                              ),
                              child: Icon(Icons.checklist_rtl_outlined,size: 22, color: Colors.red.shade500,),
                            ),
                          ),
                          InkWell(
                            onTap: (){},
                            child: Container(
                                margin: EdgeInsets.only(top: 5),
                                child: Text('Todays Deal', style: TextStyle(fontSize: 11, color: Colors.grey),)
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 70,
                      width: 60,
                      child: Column(
                        children: [
                          InkWell(
                            onTap: (){},
                            child: Container(
                              height:50,
                              width: 45,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.grey.shade300
                                  ),
                                  shape: BoxShape.circle
                              ),
                              child: Icon(Icons.flash_auto_outlined,size: 22, color: Colors.blue,),
                            ),
                          ),
                          InkWell(
                            onTap: (){},
                            child: Container(
                                margin: EdgeInsets.only(top: 5),
                                child: Text('Flash Sale', style: TextStyle(fontSize: 11, color: Colors.grey),)
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 22,
                width: double.infinity,
                child: Text('Featured Categories', style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),),
                margin: EdgeInsets.only(left: 20, top: 15),
              ), //Featured categories
              Container(
                height: 120,
                width: double.infinity,
                //color: Colors.blue,
                margin: EdgeInsets.only(left: 20,),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children:[
                      InkWell(
                        onTap: (){},
                        child: Container(
                        height: 110,
                        width: 80,
                        alignment: Alignment.bottomCenter,
                        padding: EdgeInsets.all(5),
                        margin: EdgeInsets.only(right: 10),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                "https://st.depositphotos.com/1017986/2252/i/600/depositphotos_22526943-stock-photo-woman-wearing-wreath-of-flowers.jpg"
                              ), fit: BoxFit.cover),
                            color: Colors.amber,
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: Text('Womens Fashion & Colothing',style: TextStyle(fontSize: 10, letterSpacing: 0.1, color: Colors.black), textAlign: TextAlign.center),
                    ),
                      ),
                      InkWell(
                        onTap: (){},
                        child: Container(
                          height: 110,
                          width: 80,
                          alignment: Alignment.bottomCenter,
                          padding: EdgeInsets.all(5),
                          margin: EdgeInsets.only(right: 10),
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(
                                      "https://lifetailored.com/wp-content/uploads/2018/03/ties3.jpg"
                                  ), fit: BoxFit.cover),
                              color: Colors.amber,
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: Text('Mens Fashion & Colothing',style: TextStyle(fontSize: 10, letterSpacing: 0.1, color: Colors.black), textAlign: TextAlign.center),
                        ),
                      ),
                      InkWell(
                        onTap: (){},
                        child: Container(
                          height: 110,
                          width: 80,
                          alignment: Alignment.bottomCenter,
                          padding: EdgeInsets.all(5),
                          margin: EdgeInsets.only(right: 10),
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(
                                      "https://www.freecodecamp.org/news/content/images/2021/11/niclas-illg-wzVQp_NRIHg-unsplash.jpg"
                                  ), fit: BoxFit.cover),
                              color: Colors.amber,
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: Text('Computer & Accessories',style: TextStyle(fontSize: 10, letterSpacing: 0.1, color: Colors.black), textAlign: TextAlign.center),
                        ),
                      ),
                      InkWell(
                        onTap: (){},
                        child: Container(
                          height: 110,
                          width: 80,
                          alignment: Alignment.bottomCenter,
                          padding: EdgeInsets.all(5),
                          margin: EdgeInsets.only(right: 10),
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(
                                      "https://images.unsplash.com/photo-1605559424843-9e4c228bf1c2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fGNhcnN8ZW58MHx8MHx8&w=1000&q=80"
                                  ), fit: BoxFit.cover),
                              color: Colors.amber,
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: Text('Car & Automobile',style: TextStyle(fontSize: 10, letterSpacing: 0.1, color: Colors.black), textAlign: TextAlign.center),
                        ),
                      ),
                      InkWell(
                        onTap: (){},
                        child: Container(
                          height: 110,
                          width: 80,
                          alignment: Alignment.bottomCenter,
                          padding: EdgeInsets.all(5),
                          margin: EdgeInsets.only(right: 10),
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(
                                      "https://static-01.daraz.com.bd/p/84ffe906808bb770cbb4fc485d9675dc.jpg"
                                  ), fit: BoxFit.cover),
                              color: Colors.amber,
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: Text('Home Exercise Equipment',style: TextStyle(fontSize: 10, letterSpacing: 0.1, color: Colors.black), textAlign: TextAlign.center),
                        ),
                      ),
                      InkWell(
                        onTap: (){},
                        child: Container(
                          height: 110,
                          width: 80,
                          alignment: Alignment.bottomCenter,
                          padding: EdgeInsets.all(5),
                          margin: EdgeInsets.only(right: 10),
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(
                                      "https://cdn.shopify.com/s/files/1/0255/0992/0834/articles/mortal-shell-game-release-date-PC-case-modder-for-giveaway-playstation-xbox-steam_300x300.jpg?v=1596983751"
                                  ), fit: BoxFit.cover),
                              color: Colors.amber,
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: Text('Gaming Equipment',style: TextStyle(fontSize: 10, letterSpacing: 0.1, color: Colors.black), textAlign: TextAlign.center),
                        ),
                      ),
                      InkWell(
                        onTap: (){},
                        child: Container(
                          height: 110,
                          width: 80,
                          alignment: Alignment.bottomCenter,
                          padding: EdgeInsets.all(5),
                          margin: EdgeInsets.only(right: 10),
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(
                                      "https://admin.regalfurniturebd.com/storage/uploads/fullsize/2022-05/ssc-344-n.jpg"
                                  ), fit: BoxFit.cover),
                              color: Colors.amber,
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: Text('Home Furniture',style: TextStyle(fontSize: 10, letterSpacing: 0.1, color: Colors.black), textAlign: TextAlign.center),
                        ),
                      ),
                      InkWell(
                        onTap: (){},
                        child: Container(
                          height: 110,
                          width: 80,
                          alignment: Alignment.bottomCenter,
                          padding: EdgeInsets.all(5),
                          margin: EdgeInsets.only(right: 10),
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(
                                      "https://www.babycenter.com/ims/2019/11/gifts-3-to-6-months-6-square.jpg.pagespeed.ce.y59na0YnpY.jpg"
                                  ), fit: BoxFit.cover),
                              color: Colors.amber,
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: Text('Babies & Toys',style: TextStyle(fontSize: 10, letterSpacing: 0.1, color: Colors.black), textAlign: TextAlign.center),
                        ),
                      ),
                      InkWell(
                        onTap: (){},
                        child: Container(
                          height: 110,
                          width: 80,
                          alignment: Alignment.bottomCenter,
                          padding: EdgeInsets.all(5),
                          margin: EdgeInsets.only(right: 10),
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(
                                      "https://www.pure360.com/wp-content/uploads/2018/06/shutterstock_518732392.jpg"
                                  ), fit: BoxFit.cover),
                              color: Colors.amber,
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: Text('Health & Beauty',style: TextStyle(fontSize: 10, letterSpacing: 0.1, color: Colors.black), textAlign: TextAlign.center),
                        ),
                      ),
                      InkWell(
                        onTap: (){},
                        child: Container(
                          height: 110,
                          width: 80,
                          alignment: Alignment.bottomCenter,
                          padding: EdgeInsets.all(5),
                          margin: EdgeInsets.only(right: 10),
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(
                                      "https://montemlife.com/wp-content/uploads/2019/02/beau-runsten-466663-unsplash-533x400.jpg"
                                  ), fit: BoxFit.cover),
                              color: Colors.amber,
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: Text('Sports & Outdoor',style: TextStyle(fontSize: 10, letterSpacing: 0.1, color: Colors.black), textAlign: TextAlign.center),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 22,
                width: double.infinity,
                child: Text('Featured Products', style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),),
                margin: EdgeInsets.only(left: 20, top: 10),
              ),
              Container(
                height: 240,
                width: double.infinity,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 20),
                        height: 220,
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(width: 0.5, color: Colors.grey),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: (){},
                              child: Container(
                                height: 120,
                                width: 130,
                                margin: EdgeInsets.only(top: 25),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    image: DecorationImage(
                                      image: NetworkImage('https://mobidigitalsa.co.za/wp-content/uploads/2022/04/iphone_12_Pro.png'),
                                    fit: BoxFit.cover),
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: (){},
                              child: Container(
                                height: 60,
                                width: 150,
                                margin: EdgeInsets.only(top: 10),
                                padding: EdgeInsets.only(top: 10),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Text('iPhone 12 pro max\npacific blue 256 gb',
                                    textAlign: TextAlign.center,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 20),
                        height: 220,
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(width: 0.5, color: Colors.grey),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: (){},
                              child: Container(
                                height: 120,
                                width: 130,
                                margin: EdgeInsets.only(top: 25),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  image: DecorationImage(
                                      image: NetworkImage('https://s.clipartkey.com/mpngs/s/15-159576_brown-wrist-watch-png-clip-art-wrist-watch.png'),
                                      fit: BoxFit.cover),
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: (){},
                              child: Container(
                                height: 60,
                                width: 150,
                                margin: EdgeInsets.only(top: 10),
                                padding: EdgeInsets.only(top: 10),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Text('iPhone 12 pro max\npacific blue 256 gb',
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        )
      ),
    );
  }
}
