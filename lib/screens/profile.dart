import 'package:flutter/material.dart';
class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text('Profile', style: TextStyle(color: Colors.red.shade500),),
      ),
      body: Container(
        child: Column(
          children: [
            Center(
              child: Container(
                margin: EdgeInsets.only(top: 20),
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  image: DecorationImage(
                      image: NetworkImage('https://media.istockphoto.com/photos/real-chinese-young-woman-with-happy-expression-picture-id1181862359?b=1&k=20&m=1181862359&s=170667a&w=0&h=QK9SfASgHbXScnIc3nz5lWRVad-Y2ThYpf_8NQCCbqY='),
                  fit: BoxFit.cover)
                ),
              ),
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(top: 5),
              child: Column(
                children: [
                  Container(
                    height: 25,
                    padding: EdgeInsets.only(top: 5),
                    width: double.infinity,
                    child: Text('Hasanat Jahan Luna', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold), textAlign: TextAlign.center,),
                  ),
                  Container(
                    height: 20,
                    width: double.infinity,
                    child: Text('Luna@gmail.com', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Colors.grey), textAlign: TextAlign.center,),
                  ),
                  Container(
                    height: 24,
                    alignment: Alignment.center,
                    width: 110,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Text('Check Balance', style: TextStyle(color: Colors.white), textAlign: TextAlign.center,),
                  ),
                  Container(
                    height: 80,
                    margin: EdgeInsets.only(top: 10),
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children:[
                        Container(
                         child: Column(
                           children: [
                             Container(
                               alignment: Alignment.center,
                               height: 50,
                               width: 80,
                             child: Text('05', textAlign: TextAlign.center, style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
                             ),
                             Container(
                               alignment: Alignment.center,
                               height: 15,
                               width: 80,
                               child: Text('In your Cart', textAlign: TextAlign.center, style: TextStyle(color: Colors.grey),),
                             )
                           ],
                         ),
                        ),
                        Container(
                          child: Column(
                            children: [
                              Container(
                                alignment: Alignment.center,
                                height: 50,
                                width: 80,
                                child: Text('10', textAlign: TextAlign.center, style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
                              ),
                              Container(
                                alignment: Alignment.center,
                                height: 15,
                                width: 80,
                                child: Text('In Wishlist', textAlign: TextAlign.center, style: TextStyle(color: Colors.grey),),
                              )
                            ],
                          ),
                        ),
                        Container(
                          child: Column(
                            children: [
                              Container(
                                alignment: Alignment.center,
                                height: 50,
                                width: 80,
                                child: Text('20', textAlign: TextAlign.center, style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
                              ),
                              Container(
                                alignment: Alignment.center,
                                height: 15,
                                width: 80,
                                child: Text('Ordered', textAlign: TextAlign.center, style: TextStyle(color: Colors.grey),),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                ],
              ),
            ),
            Divider(),
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
                          onTap: (){},
                          child: Container(
                            height:50,
                            width: 45,
                            decoration: BoxDecoration(
                                color: Colors.grey.shade200,
                                border: Border.all(
                                    color: Colors.grey.shade200
                                ),
                                shape: BoxShape.circle
                            ),
                            child: Icon(Icons.list_alt_rounded,size: 24, color: Colors.green,),
                          ),
                        ),
                        InkWell(
                          onTap: (){},
                          child: Container(
                              margin: EdgeInsets.only(top: 5),
                              child: Text('Orders', style: TextStyle(fontSize: 12, color: Colors.grey.shade600))
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
                              color: Colors.grey.shade200,
                                border: Border.all(
                                    color: Colors.grey.shade200
                                ),
                                shape: BoxShape.circle
                            ),
                            child: Icon(Icons.person,size: 24, color: Colors.blue,),
                          ),
                        ),
                        InkWell(
                          onTap: (){},
                          child: Container(
                              margin: EdgeInsets.only(top: 5),
                              child: Text('Profile', style: TextStyle(fontSize: 12, color: Colors.grey.shade600),)
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
                              color: Colors.grey.shade200,
                                border: Border.all(
                                    color: Colors.grey.shade200
                                ),
                                shape: BoxShape.circle
                            ),
                            child: Icon(Icons.location_on,size: 24, color: Colors.amber,),
                          ),
                        ),
                        InkWell(
                          onTap: (){},
                          child: Container(
                              margin: EdgeInsets.only(top: 5),
                              child: Text('Address', style: TextStyle(fontSize: 12, color: Colors.grey.shade600),)
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
                              color: Colors.grey.shade200,
                                border: Border.all(
                                    color: Colors.grey.shade200
                                ),
                                shape: BoxShape.circle
                            ),
                            child: Icon(Icons.message,size: 24, color: Colors.red.shade500,),
                          ),
                        ),
                        InkWell(
                          onTap: (){},
                          child: Container(
                              margin: EdgeInsets.only(top: 5),
                              child: Text('Messages', style: TextStyle(fontSize: 12, color: Colors.grey.shade600),)
                          ),
                        ),
                      ],
                    ),
                  ),

                ],
              ),
            ),
            Divider(),
            Container(
              width: double.infinity,
              height: 200,
              margin: EdgeInsets.only(left: 10, right: 10, top: 5),
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    child: Row(
                      children: [
                        InkWell(
                          onTap: (){},
                          child: Container(
                            margin: EdgeInsets.only(left: 10),
                            height:35,
                            width: 60,
                            decoration: BoxDecoration(
                                color: Colors.amber,
                                border: Border.all(
                                    color: Colors.amber
                                ),
                                shape: BoxShape.circle
                            ),
                            child: Icon(Icons.notifications_outlined,size: 20, color: Colors.white,),
                          ),
                        ),
                        InkWell(
                          onTap: (){},
                          child: Container(
                              //margin: EdgeInsets.only(top: 5),
                              child: Text('Notifications', style: TextStyle(fontSize: 13, color: Colors.grey.shade600))
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      children: [
                        InkWell(
                          onTap: (){},
                          child: Container(
                            margin: EdgeInsets.only(left: 10, top: 15),
                            height:35,
                            width: 60,
                            decoration: BoxDecoration(
                                color: Colors.green,
                                border: Border.all(
                                    color: Colors.green
                                ),
                                shape: BoxShape.circle
                            ),
                            child: Icon(Icons.payment_outlined,size: 20, color: Colors.white,),
                          ),
                        ),
                        InkWell(
                          onTap: (){},
                          child: Container(
                              margin: EdgeInsets.only(top: 15),
                              child: Text('Payment History', style: TextStyle(fontSize: 13, color: Colors.grey.shade600))
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
