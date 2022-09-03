import 'package:flutter/material.dart';
import 'package:my_app_ecommerce/screens/custom_heading.dart';
import 'package:my_app_ecommerce/screens/home_page.dart';
import 'package:my_app_ecommerce/screens/login.dart';
import 'package:my_app_ecommerce/screens/signup_phone.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  var nameController= TextEditingController();
  var emailController= TextEditingController();
  var passwordController= TextEditingController();
  var rePasswordController= TextEditingController();
  final _formkey = GlobalKey <FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child:Column(
            children:[
                Container(
                  padding: EdgeInsets.only(top: 50),
                  height: 140,
                  width: double.infinity,
                  child: CircleAvatar(
                    child: Image.asset('lib/assets/images/logo-ecom.png'),
                    backgroundColor: Colors.transparent,
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.only(top: 8),
                  height: 40,
                  width: double.infinity,
                  child: Text('Join Our eCommerce', style: TextStyle(
                    fontSize:20, color: Colors.red, fontWeight: FontWeight.bold, fontFamily: 'Bahnschrift'),),
                ),
                Container(
                  child: Form(
                      key: _formkey,
                      child: Column(
                        children: [
                          CustomHeading(height: 25, paddingLeft: 20, fontSize: 15, headingTitle: 'Name'),
                          Container(
                            alignment: Alignment.centerLeft,
                            height: 57,
                            width: double.infinity,
                            padding: EdgeInsets.only(left: 20, right: 20),
                            child:TextFormField(

                                controller: nameController,
                                validator: (value){
                                  if(value== null ||value.isEmpty){
                                    return 'name is required';
                                  }
                                  return null;
                                },
                                keyboardType: TextInputType.text,
                                enabled: true,
                                textAlign: TextAlign.left,
                                decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.horizontal(left: Radius.circular(8), right: Radius.circular(8)),),
                                  hintText: 'John Doe',
                                  contentPadding: EdgeInsets.only(left: 6),
                              ),
                            ),
                          ),//name field
                          CustomHeading(height: 25, paddingLeft: 20, fontSize: 15, headingTitle: 'Email'),
                          Container(
                            alignment: Alignment.centerLeft,
                            height: 57,
                            width: double.infinity,
                            padding: EdgeInsets.only(left: 20, right: 20),
                            child:TextFormField(
                              controller: emailController,
                              keyboardType: TextInputType.emailAddress,
                              enabled: true,
                              validator: (value){
                                if(value==null || value.isEmpty){
                                  return 'email is required';
                                }
                                return null;
                              },
                              textAlign: TextAlign.left,
                              decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.horizontal(left: Radius.circular(8), right: Radius.circular(8)),),
                                  hintText: 'samir@gmail.com',
                                  contentPadding: EdgeInsets.only(left: 6),
                              ),
                            ),
                          ),//email field
                          InkWell(
                            onTap: (){
                              Navigator.push(
                                  context, 
                                  MaterialPageRoute(builder: (context){
                                    return SignupPhone();
                                  }));
                              },
                            child: Container(
                              alignment: Alignment.centerRight,
                              padding: EdgeInsets.only(right: 20),
                              child: Text('or, Register with phone number', style: TextStyle(
                                color: Colors.red
                              ) ,),
                            ),
                          ),
                          CustomHeading(height: 25, paddingLeft: 20, fontSize: 15, headingTitle: 'Password'),
                          Container(
                            alignment: Alignment.centerLeft,
                            height: 57,
                            width: double.infinity,
                            padding: EdgeInsets.only(left: 20, right: 20),
                            child:TextFormField(
                              controller: passwordController,
                              keyboardType: TextInputType.visiblePassword,
                              enabled: true,
                              validator: (value){
                                if(value== null || value.isEmpty){
                                  return 'password is required';
                                }else if(value.length<6){
                                  return 'password must be at least 6 characters';
                                }else if(value.length>6){
                                  return 'Only 6 characters required';
                                }else{
                                  return null;
                                }
                              },
                              obscureText: true,
                              textAlign: TextAlign.left,
                              decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.horizontal(left: Radius.circular(8), right: Radius.circular(8)),),
                                  contentPadding: EdgeInsets.fromLTRB(6, 0, 0, 0),
                              ),
                            ),
                          ),//password field
                          CustomHeading(height: 25, paddingLeft: 20, fontSize: 15, headingTitle: 'Retype password'),
                          Container(
                            alignment: Alignment.centerLeft,
                            height: 57,
                            width: double.infinity,
                            padding: EdgeInsets.only(left: 20, right: 20),
                            child:TextFormField(
                              controller: rePasswordController,
                              keyboardType: TextInputType.visiblePassword,
                              enabled: true,
                              obscureText: true,
                              validator: (value){
                                if(value!.isEmpty){
                                  return 'Retype your password';
                                }
                              },
                              textAlign: TextAlign.left,
                              decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.horizontal(left: Radius.circular(8), right: Radius.circular(8)),),
                                  contentPadding: EdgeInsets.only(left: 6),
                              ),
                            ),
                          ),//retype pass field
                          Container(
                            height: 45,
                            width: double.infinity,
                            margin: EdgeInsets.all(20),
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
                                    Text('Sign up')
                                  ],
                                )
                            ),
                          ),//sign up
                          Container(
                              height: 30,
                              width: double.infinity,
                              padding: EdgeInsets.only(left: 20),
                              alignment: Alignment.center,
                              child: Text('Already have an account?', style: TextStyle(color: Colors.grey, fontSize: 15))
                          ),//already have account
                          Container(
                            height: 45,
                            width: double.infinity,
                            margin: EdgeInsets.only(left: 20, right: 20),
                            child: FlatButton(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15.0)
                                ),
                                textColor: Colors.white,
                                color: Colors.amber,
                                onPressed: (){
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context){
                                        return Login();
                                      }));
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
                            width: double.infinity,
                            height: 20,
                          )//log in
                        ],
                      )
                  ),
                )
            ],
          ) ,
        ),
      ),
    );
  }
}
