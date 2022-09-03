import 'package:flutter/material.dart';

class TopSeller extends StatefulWidget {
  const TopSeller({Key? key}) : super(key: key);

  @override
  State<TopSeller> createState() => _TopSellerState();
}

class _TopSellerState extends State<TopSeller> {
  var searchFieldController=TextEditingController();
  final _formkey= GlobalKey <FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 25,
        elevation: 0,
          bottom: PreferredSize(
            child: Container(
              color: Colors.grey.shade300,
              height: 1.0,
      ),
        preferredSize: Size.fromHeight(1.0)),
          //toolbarHeight: 60,
          shadowColor: Colors.white,
          title: Form(
            key: _formkey,
            child: Container(
              width: double.infinity,
              child: TextFormField(
                keyboardType: TextInputType.text,
                controller: searchFieldController,
                decoration: InputDecoration(
                  border: InputBorder.none,
                    hintText: 'Search Here?',
                    hintStyle: TextStyle(color: Colors.grey),
                    contentPadding: EdgeInsets.all(3)
                ),
              ),
            ),
          ),
          actions: [
            IconButton(
                onPressed: (){},
                icon: Icon(Icons.search))
          ]
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 155,
              margin: EdgeInsets.only(top: 10),
              width: double.infinity,
              child: SingleChildScrollView(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 150,
                      width: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(width: 0.5, color: Colors.grey),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: (){},
                            child: Container(
                              height: 60,
                              width: 70,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage('https://avatars.githubusercontent.com/u/10528552?s=200&v=4'),
                                    fit: BoxFit.cover),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: (){},
                            child: Container(
                              height: 35,
                              width: 130,
                              alignment: Alignment.center,
                              margin: EdgeInsets.only(top: 20),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Text('A-Z Importers International', textAlign: TextAlign.center,
                              style: TextStyle(fontWeight: FontWeight.bold),),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 150,
                      width: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(width: 0.5, color: Colors.grey),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: (){},
                            child: Container(
                              height: 60,
                              width: 70,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage('https://images.glints.com/unsafe/180x0/glints-dashboard.s3.amazonaws.com/company-logo/ff64ce72c383219cbba70e91a5085ff0.png'),
                                    fit: BoxFit.cover),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: (){},
                            child: Container(
                              alignment: Alignment.center,
                              height: 35,
                              width: 130,
                              margin: EdgeInsets.only(top: 20),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Text('Asset Store', textAlign: TextAlign.center,
                                style: TextStyle(fontWeight: FontWeight.bold),),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 155,
              margin: EdgeInsets.only(top: 10),
              width: double.infinity,
              child: SingleChildScrollView(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 150,
                      width: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(width: 0.5, color: Colors.grey),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: (){},
                            child: Container(
                              height: 60,
                              width: 70,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage('https://www.kindpng.com/picc/m/20-200986_letter-f-png-f-letter-logo-png-transparent.png'),
                                    fit: BoxFit.cover),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: (){},
                            child: Container(
                              height: 35,
                              width: 130,
                              alignment: Alignment.center,
                              margin: EdgeInsets.only(top: 20),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Text('Fashion Plus', textAlign: TextAlign.center,
                                style: TextStyle(fontWeight: FontWeight.bold),),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 150,
                      width: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(width: 0.5, color: Colors.grey),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: (){},
                            child: Container(
                              height: 60,
                              width: 70,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage('https://www.freepnglogos.com/uploads/g-letter-png/g-letter-letter-origami-isotype-transparent-png-svg-vector-9.png'),
                                    fit: BoxFit.cover),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: (){},
                            child: Container(
                              alignment: Alignment.center,
                              height: 35,
                              width: 130,
                              margin: EdgeInsets.only(top: 20),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Text('GAP International', textAlign: TextAlign.center,
                                style: TextStyle(fontWeight: FontWeight.bold),),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 155,
              margin: EdgeInsets.only(top: 10),
              width: double.infinity,
              child: SingleChildScrollView(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 150,
                      width: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(width: 0.5, color: Colors.grey),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: (){},
                            child: Container(
                              height: 60,
                              width: 70,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage('https://images.squarespace-cdn.com/content/v1/5b9f00e6697a98662a67d26f/1552345821489-LOWRNFSD2Y6RYS6ON8E6/CanumHex.png?format=300w'),
                                    fit: BoxFit.cover),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: (){},
                            child: Container(
                              height: 35,
                              width: 130,
                              alignment: Alignment.center,
                              margin: EdgeInsets.only(top: 20),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Text('Oaks Furniture', textAlign: TextAlign.center,
                                style: TextStyle(fontWeight: FontWeight.bold),),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 150,
                      width: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(width: 0.5, color: Colors.grey),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: (){},
                            child: Container(
                              height: 60,
                              width: 70,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage('https://media-exp1.licdn.com/dms/image/C4D0BAQErdmRvb4oncQ/company-logo_200_200/0/1593605370703?e=2147483647&v=beta&t=LNZL69Q3i2-qIPl3XA_D8dUUkhujNhiJjm5otu7Qb-Y'),
                                    fit: BoxFit.cover),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: (){},
                            child: Container(
                              alignment: Alignment.center,
                              height: 35,
                              width: 130,
                              margin: EdgeInsets.only(top: 20),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Text('WALK London', textAlign: TextAlign.center,
                                style: TextStyle(fontWeight: FontWeight.bold),),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 155,
              margin: EdgeInsets.only(top: 10),
              width: double.infinity,
              child: SingleChildScrollView(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 150,
                      width: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(width: 0.5, color: Colors.grey),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: (){},
                            child: Container(
                              height: 65,
                              width: 70,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage('https://npa.org.nz/wp-content/uploads/2019/12/npalogo-1536x1455.png'),
                                    fit: BoxFit.cover),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: (){},
                            child: Container(
                              height: 35,
                              width: 130,
                              alignment: Alignment.center,
                              margin: EdgeInsets.only(top: 20),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Text('Cross Street', textAlign: TextAlign.center,
                                style: TextStyle(fontWeight: FontWeight.bold),),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 150,
                      width: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(width: 0.5, color: Colors.grey),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: (){},
                            child: Container(
                              height: 60,
                              width: 70,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage('https://www.pngitem.com/pimgs/m/201-2010923_repair-icon-png-transparent-png.png'),
                                    fit: BoxFit.cover),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: (){},
                            child: Container(
                              alignment: Alignment.center,
                              height: 35,
                              width: 130,
                              margin: EdgeInsets.only(top: 20),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Text('Cavana Home Repair', textAlign: TextAlign.center,
                                style: TextStyle(fontWeight: FontWeight.bold),),
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
      ),
    );
  }
}
