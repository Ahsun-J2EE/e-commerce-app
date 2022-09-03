import 'package:flutter/material.dart';
import 'package:my_app_ecommerce/screens/home_page.dart';
import 'package:my_app_ecommerce/screens/signup.dart';
import 'custom_heading.dart';

class Login extends StatelessWidget {
  final _formkey= GlobalKey <FormState>();
  var passwordController= TextEditingController();
  var emailController = TextEditingController();
  var password =123456;
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
                child: Text('Login Our eCommerce', style: TextStyle(
                    fontSize:24, color: Colors.red, fontWeight: FontWeight.bold, fontFamily: 'Bahnschrift'),),
              ),
              Container(
                height: 20,
              ),
              CustomHeading(height: 18, paddingLeft: 20, fontSize: 15, headingTitle: 'Email'),
              Container(
                padding: EdgeInsets.only(left: 20, right: 20, top: 5),
                child: Form(
                  key: _formkey,
                  child: Column(
                    children: [
                      Container(
                        height: 55,
                        width: double.infinity,
                        child: TextFormField(
                          validator: (value){
                            if(value==null || value.isEmpty){
                              return 'Email is required';
                            }
                          },
                          controller: emailController,
                            decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.horizontal(right: Radius.circular(5), left: Radius.circular(5)) ),
                                hintText: 'habib@gmail.com',
                                contentPadding: EdgeInsets.only(left: 5))
                        ),
                      ),
                      InkWell(
                        onTap: (){},
                        child: Container(
                            height: 10,
                            width: double.infinity,
                            alignment: Alignment.topRight,
                            child: Text('Forgot Password?', style: TextStyle(color: Colors.blue, fontSize: 10, fontStyle: FontStyle.italic))
                        ),
                      ),
                      CustomHeading(height: 18, paddingLeft: 0, fontSize: 15, headingTitle: 'Password'),
                      Container(
                        margin: EdgeInsets.only(top: 5),
                        height: 55,
                        width: double.infinity,
                        child: TextFormField(
                          validator: (value){
                            if(value==null || value.isEmpty){
                              return 'Password field required';
                            }else if(value.length<6){
                              return 'password would be at least 6 characters';
                            } else{
                              return null;
                            }
                          },
                          obscureText: true,
                            controller: passwordController,
                            decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.horizontal(right: Radius.circular(5), left: Radius.circular(5)) ),
                                hintText: 'Password',
                                contentPadding: EdgeInsets.only(left: 5))
                        ),
                      ),
                      Container(
                        height: 45,
                        width: double.infinity,
                        margin: EdgeInsets.only(top: 10),
                        child: FlatButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0)
                            ),
                            textColor: Colors.white,
                            color: Colors.amber,
                            onPressed: (){
                              if(_formkey.currentState!.validate()){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
                              }
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget> [
                                Text('Log in')
                              ],
                            )
                        ),
                      ),
                      Container(
                          height: 30,
                          width: double.infinity,
                          margin: EdgeInsets.only(top: 10),
                          alignment: Alignment.center,
                          child: Text('or, create a new account', style: TextStyle(color: Colors.grey, fontSize: 15))
                      ),
                      Container(
                        height: 45,
                        width: double.infinity,
                        margin: EdgeInsets.only(top: 10),
                        child: FlatButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0)
                            ),
                            textColor: Colors.white,
                            color: Colors.red,
                            onPressed: (){
                               Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUp()));
                              },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget> [
                                Text('Sign up')
                              ],
                            )
                        ),
                      ),
                      Container(
                          height: 30,
                          width: double.infinity,
                          margin: EdgeInsets.only(top: 10),
                          alignment: Alignment.center,
                          child: Text('Login with', style: TextStyle(color: Colors.grey, fontSize: 15))
                      ),
                      Container(
                        width: 160,
                        margin: EdgeInsets.only(top: 15),
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
            ],
          ),
        ),
      )
    );
  }
}
