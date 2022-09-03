import 'package:flutter/material.dart';
import 'package:my_app_ecommerce/screens/custom_heading.dart';
import 'package:my_app_ecommerce/screens/login.dart';

class SignupPhone extends StatefulWidget {
  const SignupPhone({Key? key}) : super(key: key);

  @override
  State<SignupPhone> createState() => _SignupPhoneState();
}

class _SignupPhoneState extends State<SignupPhone> {
  final _formkey = GlobalKey <FormState>();
  var phoneCodeList = ['USA+(01)', 'BD+(88)','CANADA+(1)','EGYPT+(20)', 'TUNISIA+(216)'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(top: 50),
                height: 150,
                width: double.infinity,
                child: CircleAvatar(
                  child: Image.asset('lib/assets/images/logo-ecom.png'),
                  backgroundColor: Colors.transparent,
                ),
              ),
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.only(top: 8),
                height: 50,
                width: double.infinity,
                child: Text('Join Our eCommerce', style: TextStyle(
                    fontSize:24, color: Colors.red, fontWeight: FontWeight.bold, fontFamily: 'Bahnschrift'),),
              ),
              Container(
                height: 20,
              ),
              CustomHeading(height: 18, paddingLeft: 20, fontSize: 15, headingTitle: 'Phone number'),
              Container(
                padding: EdgeInsets.only(left: 20, right: 20),
                child: Form(
                  child: Column(
                    children: [
                      Container(
                        height: 45,
                        width: double.infinity,
                        child: DropdownButtonFormField(
                          decoration: InputDecoration(
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white)
                            )
                          ),
                            items: phoneCodeList.map((e) =>DropdownMenuItem(
                                value: e,
                                child: Text(e),
                            )
                            ).toList(),
                          onChanged: (String? value) {  },
                        ),
                      ),
                      Container(
                        height: 80,
                        width: double.infinity,
                        child: TextFormField(
                          decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.horizontal(right: Radius.circular(5), left: Radius.circular(5)) ),
                          helperText: "We'll call or text you to confirm your number.\nStandard message and data rates apply",
                          helperStyle: TextStyle(height: 1.5, fontSize: 12, letterSpacing: 0.4),
                          contentPadding: EdgeInsets.only(left: 5))
                        ),
                      ),
                      Container(
                        height: 45,
                        width: double.infinity,
                        margin: EdgeInsets.only(top: 30),
                        child: FlatButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0)
                            ),
                            textColor: Colors.white,
                            color: Colors.red,
                            onPressed: (){
                              if (_formkey.currentState!.validate()){
                                ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(content: Text('Registration Successful!'))
                                );
                              }
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget> [
                                Text('Sign up with phone number')
                              ],
                            )
                        ),
                      ),
                      Container(
                          height: 30,
                          width: double.infinity,
                          margin: EdgeInsets.only(top: 15),
                          alignment: Alignment.center,
                          child: Text('or, Continue with', style: TextStyle(color: Colors.grey, fontSize: 15))
                      ),
                      Container(
                        width: 160,
                        margin: EdgeInsets.only(top: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(Icons.facebook,size: 35, color: Colors.blue,),
                            Container(
                              child: CircleAvatar(
                                maxRadius: 16,
                                  child: Image.network('https://cdn-icons-png.flaticon.com/512/2991/2991148.png', fit: BoxFit.cover, ),
                                backgroundColor: Colors.transparent,
                              ),
                            ),
                            Container(
                              child: CircleAvatar(
                                maxRadius: 16,
                                child: Image.network('https://www.pngplay.com/wp-content/uploads/8/Twitter-Icon-Transparent-PNG.png', fit: BoxFit.cover, ),
                                backgroundColor: Colors.transparent,
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                width: 250,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      height: 30,
                      alignment: Alignment.center,
                      child: Text('Already have an account?', style: TextStyle(color: Colors.grey, fontSize: 15,))),
                  Container(
                    child: InkWell(
                      onTap: (){
                        Navigator.push(context,
                            MaterialPageRoute(builder: (_)=>Login()));
                      },
                        child: Text(' Log in', style: TextStyle(color: Colors.red.shade800, fontWeight: FontWeight.bold),)),
                  )
                ],
              ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
