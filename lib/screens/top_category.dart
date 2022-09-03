import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:my_app_ecommerce/screens/profile.dart';
import 'package:my_app_ecommerce/screens/top_seller.dart';

import 'home_page.dart';
import 'login.dart';
class TopCategories extends StatefulWidget {
  const TopCategories({Key? key}) : super(key: key);

  @override
  State<TopCategories> createState() => _TopCategoriesState();
}

class _TopCategoriesState extends State<TopCategories> {
  var drawerList=['Home', 'Profile', 'Top Sellers', 'Top Categories', 'Messages', 'Wallet', 'Logout'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Category', style: TextStyle(color: Colors.red.shade600,),textAlign: TextAlign.center,),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
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
      body: SingleChildScrollView(
        child: Column(children:[
          Container(
            height: 80,
            width: double.infinity,
            margin: EdgeInsets.only(left: 15, right: 15, bottom: 9),
            decoration: BoxDecoration(
              //color: Colors.red,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(width: 1, color: Colors.grey.shade300),
            ),
            child: Row(
              children: [
                InkWell(
                  onTap: (){},
                  child: Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                      //color: Colors.amber,
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(5), bottomLeft: Radius.circular(5)),
                      image: DecorationImage(
                          image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQR7Z9_Bm5Gaj1tCh9uft03bOY8Xh112qFKPRrVJr4JSErZCWQbmIqvi34dHFxaklwZRso&usqp=CAU'), fit: BoxFit.cover)
                    ),
                  ),
                ),
                Container(
                  height: 80,
                  width: 245,
                  decoration: BoxDecoration(
                      //color: Colors.deepOrange,
                      borderRadius: BorderRadius.only(topRight: Radius.circular(5), bottomRight: Radius.circular(5))
                  ),
                  child: Column(
                    children: [
                      InkWell(
                        onTap: (){},
                        child: Container(
                          height: 30,
                          width: 245,
                          alignment: Alignment.bottomLeft,
                          margin: EdgeInsets.only(top: 8, left: 10),
                          //color: Colors.green,
                          child: Text('Women Clothing & Fashion', textAlign: TextAlign.left, style: TextStyle(fontWeight: FontWeight.bold),),
                        ),
                      ),
                      Container(
                        height: 30,
                        width: 245,
                        //color: Colors.purple,
                        child: Row(
                          children: [
                            InkWell(
                              onTap: (){},
                              child: Container(
                                height: 30,
                                width: 120,
                                margin: EdgeInsets.only(left: 30),
                                alignment: Alignment.bottomRight,
                                //color: Colors.amber,
                                child: Text('View all Sub categories |', style: TextStyle(fontSize: 11, decoration: TextDecoration.underline, color: Colors.grey), textAlign: TextAlign.center,),
                              ),
                            ),
                            InkWell(
                              onTap: (){},
                              child: Container(
                                height: 30,
                                width: 90,
                                alignment: Alignment.bottomRight,
                                //color: Colors.red,
                                child: Text('View all products', style: TextStyle(fontSize: 11, color: Colors.grey, decoration: TextDecoration.underline), textAlign: TextAlign.center,),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            height: 80,
            width: double.infinity,
            margin: EdgeInsets.only(left: 15, right: 15, bottom: 9),
            decoration: BoxDecoration(
              //color: Colors.red,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(width: 1, color: Colors.grey.shade300),
            ),
            child: Row(
              children: [
                InkWell(
                  onTap: (){},
                  child: Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                      //color: Colors.amber,
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(5), bottomLeft: Radius.circular(5)),
                        image: DecorationImage(
                            image: NetworkImage('https://5.imimg.com/data5/YY/FR/MY-22703364/selection_150-500x500.png'), fit: BoxFit.cover)
                    ),
                  ),
                ),
                Container(
                  height: 80,
                  width: 245,
                  decoration: BoxDecoration(
                    //color: Colors.deepOrange,
                      borderRadius: BorderRadius.only(topRight: Radius.circular(5), bottomRight: Radius.circular(5))
                  ),
                  child: Column(
                    children: [
                      InkWell(
                        onTap: (){},
                        child: Container(
                          height: 30,
                          width: 245,
                          alignment: Alignment.bottomLeft,
                          margin: EdgeInsets.only(top: 8, left: 10),
                          //color: Colors.green,
                          child: Text('Men Clothing & Fashion', textAlign: TextAlign.left, style: TextStyle(fontWeight: FontWeight.bold),),
                        ),
                      ),
                      Container(
                        height: 30,
                        width: 245,
                        //color: Colors.purple,
                        child: Row(
                          children: [
                            InkWell(
                              onTap: (){},
                              child: Container(
                                height: 30,
                                width: 120,
                                margin: EdgeInsets.only(left: 30),
                                alignment: Alignment.bottomRight,
                                //color: Colors.amber,
                                child: Text('View all Sub categories |', style: TextStyle(fontSize: 11, decoration: TextDecoration.underline, color: Colors.grey), textAlign: TextAlign.center,),
                              ),
                            ),
                            InkWell(
                              onTap: (){},
                              child: Container(
                                height: 30,
                                width: 90,
                                alignment: Alignment.bottomRight,
                                //color: Colors.red,
                                child: Text('View all products', style: TextStyle(fontSize: 11, color: Colors.grey, decoration: TextDecoration.underline), textAlign: TextAlign.center,),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            height: 80,
            width: double.infinity,
            margin: EdgeInsets.only(left: 15, right: 15, bottom: 9),
            decoration: BoxDecoration(
              //color: Colors.red,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(width: 1, color: Colors.grey.shade300),
            ),
            child: Row(
              children: [
                InkWell(
                  onTap: (){},
                  child: Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                      //color: Colors.amber,
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(5), bottomLeft: Radius.circular(5)),
                        image: DecorationImage(
                            image: NetworkImage('https://www.pngall.com/wp-content/uploads/1/Mobile-PNG-Transparent-HD-Photo.png'), fit: BoxFit.cover)
                    ),
                  ),
                ),
                Container(
                  height: 80,
                  width: 245,
                  decoration: BoxDecoration(
                    //color: Colors.deepOrange,
                      borderRadius: BorderRadius.only(topRight: Radius.circular(5), bottomRight: Radius.circular(5))
                  ),
                  child: Column(
                    children: [
                      InkWell(
                        onTap: (){},
                        child: Container(
                          height: 30,
                          width: 245,
                          alignment: Alignment.bottomLeft,
                          margin: EdgeInsets.only(top: 8, left: 10),
                          //color: Colors.green,
                          child: Text('Mobile Phone & Accessories', textAlign: TextAlign.left, style: TextStyle(fontWeight: FontWeight.bold),),
                        ),
                      ),
                      Container(
                        height: 30,
                        width: 245,
                        //color: Colors.purple,
                        child: Row(
                          children: [
                            InkWell(
                              onTap: (){},
                              child: Container(
                                height: 30,
                                width: 120,
                                margin: EdgeInsets.only(left: 30),
                                alignment: Alignment.bottomRight,
                                //color: Colors.amber,
                                child: Text('View all Sub categories |', style: TextStyle(fontSize: 11, decoration: TextDecoration.underline, color: Colors.grey), textAlign: TextAlign.center,),
                              ),
                            ),
                            InkWell(
                              onTap: (){},
                              child: Container(
                                height: 30,
                                width: 90,
                                alignment: Alignment.bottomRight,
                                //color: Colors.red,
                                child: Text('View all products', style: TextStyle(fontSize: 11, color: Colors.grey, decoration: TextDecoration.underline), textAlign: TextAlign.center,),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            height: 80,
            width: double.infinity,
            margin: EdgeInsets.only(left: 15, right: 15, bottom: 9),
            decoration: BoxDecoration(
              //color: Colors.red,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(width: 1, color: Colors.grey.shade300),
            ),
            child: Row(
              children: [
                InkWell(
                  onTap: (){},
                  child: Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                      //color: Colors.amber,
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(5), bottomLeft: Radius.circular(5)),
                        image: DecorationImage(
                            image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTva7gWHkQA4iBFyB3cl0URcZElFS6ytnTHen4poxnyy0ad50yl3O_URPc325eSM5nB4uw&usqp=CAU'), fit: BoxFit.cover)
                    ),
                  ),
                ),
                Container(
                  height: 80,
                  width: 245,
                  decoration: BoxDecoration(
                    //color: Colors.deepOrange,
                      borderRadius: BorderRadius.only(topRight: Radius.circular(5), bottomRight: Radius.circular(5))
                  ),
                  child: Column(
                    children: [
                      InkWell(
                        onTap: (){},
                        child: Container(
                          height: 30,
                          width: 245,
                          alignment: Alignment.bottomLeft,
                          margin: EdgeInsets.only(top: 8, left: 10),
                          //color: Colors.green,
                          child: Text('Computer & Accessories', textAlign: TextAlign.left, style: TextStyle(fontWeight: FontWeight.bold),),
                        ),
                      ),
                      Container(
                        height: 30,
                        width: 245,
                        //color: Colors.purple,
                        child: Row(
                          children: [
                            InkWell(
                              onTap: (){},
                              child: Container(
                                height: 30,
                                width: 120,
                                margin: EdgeInsets.only(left: 30),
                                alignment: Alignment.bottomRight,
                                //color: Colors.amber,
                                child: Text('View all Sub categories |', style: TextStyle(fontSize: 11, decoration: TextDecoration.underline, color: Colors.grey), textAlign: TextAlign.center,),
                              ),
                            ),
                            InkWell(
                              onTap: (){},
                              child: Container(
                                height: 30,
                                width: 90,
                                alignment: Alignment.bottomRight,
                                //color: Colors.red,
                                child: Text('View all products', style: TextStyle(fontSize: 11, color: Colors.grey, decoration: TextDecoration.underline), textAlign: TextAlign.center,),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            height: 80,
            width: double.infinity,
            margin: EdgeInsets.only(left: 15, right: 15, bottom: 9),
            decoration: BoxDecoration(
              //color: Colors.red,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(width: 1, color: Colors.grey.shade300),
            ),
            child: Row(
              children: [
                InkWell(
                  onTap: (){},
                  child: Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                      //color: Colors.amber,
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(5), bottomLeft: Radius.circular(5)),
                        image: DecorationImage(
                            image: NetworkImage('https://img.autobytel.com/2022/lexus/is-500/2-376-oem-exterior-front1300-99900.jpg'), fit: BoxFit.cover)
                    ),
                  ),
                ),
                Container(
                  height: 80,
                  width: 245,
                  decoration: BoxDecoration(
                    //color: Colors.deepOrange,
                      borderRadius: BorderRadius.only(topRight: Radius.circular(5), bottomRight: Radius.circular(5))
                  ),
                  child: Column(
                    children: [
                      InkWell(
                        onTap: (){},
                        child: Container(
                          height: 30,
                          width: 245,
                          alignment: Alignment.bottomLeft,
                          margin: EdgeInsets.only(top: 8, left: 10),
                          //color: Colors.green,
                          child: Text('Cars & Automobile', textAlign: TextAlign.left, style: TextStyle(fontWeight: FontWeight.bold),),
                        ),
                      ),
                      Container(
                        height: 30,
                        width: 245,
                        //color: Colors.purple,
                        child: Row(
                          children: [
                            InkWell(
                              onTap: (){},
                              child: Container(
                                height: 30,
                                width: 120,
                                margin: EdgeInsets.only(left: 30),
                                alignment: Alignment.bottomRight,
                                //color: Colors.amber,
                                child: Text('View all Sub categories |', style: TextStyle(fontSize: 11, decoration: TextDecoration.underline, color: Colors.grey), textAlign: TextAlign.center,),
                              ),
                            ),
                            InkWell(
                              onTap: (){},
                              child: Container(
                                height: 30,
                                width: 90,
                                alignment: Alignment.bottomRight,
                                //color: Colors.red,
                                child: Text('View all products', style: TextStyle(fontSize: 11, color: Colors.grey, decoration: TextDecoration.underline), textAlign: TextAlign.center,),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            height: 80,
            width: double.infinity,
            margin: EdgeInsets.only(left: 15, right: 15, bottom: 9),
            decoration: BoxDecoration(
              //color: Colors.red,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(width: 1, color: Colors.grey.shade300),
            ),
            child: Row(
              children: [
                InkWell(
                  onTap: (){},
                  child: Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                      //color: Colors.amber,
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(5), bottomLeft: Radius.circular(5)),
                        image: DecorationImage(
                            image: NetworkImage('https://www.pngall.com/wp-content/uploads/5/Toy-PNG.png'), fit: BoxFit.cover)
                    ),
                  ),
                ),
                Container(
                  height: 80,
                  width: 245,
                  decoration: BoxDecoration(
                    //color: Colors.deepOrange,
                      borderRadius: BorderRadius.only(topRight: Radius.circular(5), bottomRight: Radius.circular(5))
                  ),
                  child: Column(
                    children: [
                      InkWell(
                        onTap: (){},
                        child: Container(
                          height: 30,
                          width: 245,
                          alignment: Alignment.bottomLeft,
                          margin: EdgeInsets.only(top: 8, left: 10),
                          //color: Colors.green,
                          child: Text('Kids & Toys', textAlign: TextAlign.left, style: TextStyle(fontWeight: FontWeight.bold),),
                        ),
                      ),
                      Container(
                        height: 30,
                        width: 245,
                        //color: Colors.purple,
                        child: Row(
                          children: [
                            InkWell(
                              onTap: (){},
                              child: Container(
                                height: 30,
                                width: 120,
                                margin: EdgeInsets.only(left: 30),
                                alignment: Alignment.bottomRight,
                                //color: Colors.amber,
                                child: Text('View all Sub categories |', style: TextStyle(fontSize: 11, decoration: TextDecoration.underline, color: Colors.grey), textAlign: TextAlign.center,),
                              ),
                            ),
                            InkWell(
                              onTap: (){},
                              child: Container(
                                height: 30,
                                width: 90,
                                alignment: Alignment.bottomRight,
                                //color: Colors.red,
                                child: Text('View all products', style: TextStyle(fontSize: 11, color: Colors.grey, decoration: TextDecoration.underline), textAlign: TextAlign.center,),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            height: 80,
            width: double.infinity,
            margin: EdgeInsets.only(left: 15, right: 15, bottom: 9),
            decoration: BoxDecoration(
              //color: Colors.red,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(width: 1, color: Colors.grey.shade300),
            ),
            child: Row(
              children: [
                InkWell(
                  onTap: (){},
                  child: Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                      //color: Colors.amber,
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(5), bottomLeft: Radius.circular(5)),
                        image: DecorationImage(
                            image: NetworkImage('https://p.kindpng.com/picc/s/415-4152628_playing-sports-soccer-de-brazil-logo-hd-png.png'), fit: BoxFit.cover)
                    ),
                  ),
                ),
                Container(
                  height: 80,
                  width: 245,
                  decoration: BoxDecoration(
                    //color: Colors.deepOrange,
                      borderRadius: BorderRadius.only(topRight: Radius.circular(5), bottomRight: Radius.circular(5))
                  ),
                  child: Column(
                    children: [
                      InkWell(
                        onTap: (){},
                        child: Container(
                          height: 30,
                          width: 245,
                          alignment: Alignment.bottomLeft,
                          margin: EdgeInsets.only(top: 8, left: 10),
                          //color: Colors.green,
                          child: Text('Sports & Outdoor', textAlign: TextAlign.left, style: TextStyle(fontWeight: FontWeight.bold),),
                        ),
                      ),
                      Container(
                        height: 30,
                        width: 245,
                        //color: Colors.purple,
                        child: Row(
                          children: [
                            InkWell(
                              onTap: (){},
                              child: Container(
                                height: 30,
                                width: 120,
                                margin: EdgeInsets.only(left: 30),
                                alignment: Alignment.bottomRight,
                                //color: Colors.amber,
                                child: Text('View all Sub categories |', style: TextStyle(fontSize: 11, decoration: TextDecoration.underline, color: Colors.grey), textAlign: TextAlign.center,),
                              ),
                            ),
                            InkWell(
                              onTap: (){},
                              child: Container(
                                height: 30,
                                width: 90,
                                alignment: Alignment.bottomRight,
                                //color: Colors.red,
                                child: Text('View all products', style: TextStyle(fontSize: 11, color: Colors.grey, decoration: TextDecoration.underline), textAlign: TextAlign.center,),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            height: 80,
            width: double.infinity,
            margin: EdgeInsets.only(left: 15, right: 15, bottom: 9),
            decoration: BoxDecoration(
              //color: Colors.red,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(width: 1, color: Colors.grey.shade300),
            ),
            child: Row(
              children: [
                InkWell(
                  onTap: (){},
                  child: Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                      //color: Colors.amber,
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(5), bottomLeft: Radius.circular(5)),
                        image: DecorationImage(
                            image: NetworkImage('https://www.pngall.com/wp-content/uploads/1/Mobile-PNG-Transparent-HD-Photo.png'), fit: BoxFit.cover)
                    ),
                  ),
                ),
                Container(
                  height: 80,
                  width: 245,
                  decoration: BoxDecoration(
                    //color: Colors.deepOrange,
                      borderRadius: BorderRadius.only(topRight: Radius.circular(5), bottomRight: Radius.circular(5))
                  ),
                  child: Column(
                    children: [
                      InkWell(
                        onTap: (){},
                        child: Container(
                          height: 30,
                          width: 245,
                          alignment: Alignment.bottomLeft,
                          margin: EdgeInsets.only(top: 8, left: 10),
                          //color: Colors.green,
                          child: Text('Mobile Phone & Accessories', textAlign: TextAlign.left, style: TextStyle(fontWeight: FontWeight.bold),),
                        ),
                      ),
                      Container(
                        height: 30,
                        width: 245,
                        //color: Colors.purple,
                        child: Row(
                          children: [
                            InkWell(
                              onTap: (){},
                              child: Container(
                                height: 30,
                                width: 120,
                                margin: EdgeInsets.only(left: 30),
                                alignment: Alignment.bottomRight,
                                //color: Colors.amber,
                                child: Text('View all Sub categories |', style: TextStyle(fontSize: 11, decoration: TextDecoration.underline, color: Colors.grey), textAlign: TextAlign.center,),
                              ),
                            ),
                            InkWell(
                              onTap: (){},
                              child: Container(
                                height: 30,
                                width: 90,
                                alignment: Alignment.bottomRight,
                                //color: Colors.red,
                                child: Text('View all products', style: TextStyle(fontSize: 11, color: Colors.grey, decoration: TextDecoration.underline), textAlign: TextAlign.center,),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            height: 80,
            width: double.infinity,
            margin: EdgeInsets.only(left: 15, right: 15, bottom: 9),
            decoration: BoxDecoration(
              //color: Colors.red,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(width: 1, color: Colors.grey.shade300),
            ),
            child: Row(
              children: [
                InkWell(
                  onTap: (){},
                  child: Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                      //color: Colors.amber,
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(5), bottomLeft: Radius.circular(5)),
                        image: DecorationImage(
                            image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTva7gWHkQA4iBFyB3cl0URcZElFS6ytnTHen4poxnyy0ad50yl3O_URPc325eSM5nB4uw&usqp=CAU'), fit: BoxFit.cover)
                    ),
                  ),
                ),
                Container(
                  height: 80,
                  width: 245,
                  decoration: BoxDecoration(
                    //color: Colors.deepOrange,
                      borderRadius: BorderRadius.only(topRight: Radius.circular(5), bottomRight: Radius.circular(5))
                  ),
                  child: Column(
                    children: [
                      InkWell(
                        onTap: (){},
                        child: Container(
                          height: 30,
                          width: 245,
                          alignment: Alignment.bottomLeft,
                          margin: EdgeInsets.only(top: 8, left: 10),
                          //color: Colors.green,
                          child: Text('Computer & Accessories', textAlign: TextAlign.left, style: TextStyle(fontWeight: FontWeight.bold),),
                        ),
                      ),
                      Container(
                        height: 30,
                        width: 245,
                        //color: Colors.purple,
                        child: Row(
                          children: [
                            InkWell(
                              onTap: (){},
                              child: Container(
                                height: 30,
                                width: 120,
                                margin: EdgeInsets.only(left: 30),
                                alignment: Alignment.bottomRight,
                                //color: Colors.amber,
                                child: Text('View all Sub categories |', style: TextStyle(fontSize: 11, decoration: TextDecoration.underline, color: Colors.grey), textAlign: TextAlign.center,),
                              ),
                            ),
                            InkWell(
                              onTap: (){},
                              child: Container(
                                height: 30,
                                width: 90,
                                alignment: Alignment.bottomRight,
                                //color: Colors.red,
                                child: Text('View all products', style: TextStyle(fontSize: 11, color: Colors.grey, decoration: TextDecoration.underline), textAlign: TextAlign.center,),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
