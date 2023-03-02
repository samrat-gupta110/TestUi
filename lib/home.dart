import 'package:flutter/material.dart';
import 'package:testui/details.dart';
import 'Homescreen.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final _formkey = GlobalKey<FormState>();

  String _Email = '';
  String _password = '';

  //This function will trigger when user click on submit button
  void _trysubmitform()
  {
    final bool? isValid = _formkey.currentState?.validate();
    if(isValid == true)
    {
      debugPrint('Submitted Successfully');
      debugPrint(_Email);
      debugPrint(_password);
      Navigator.push(context,
          MaterialPageRoute(builder: (context)=>Detail())
      );

      /*
        Continute proccessing the provided information with your own logic
        such us sending HTTP requests, savaing to SQLite database, etc
         */
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          color: Colors.white,
          child: Center(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Card(
                color: Colors.transparent,
                elevation: 0,
                margin: const EdgeInsets.symmetric(horizontal: 35),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Form(
                    key: _formkey,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          CircleAvatar(
                            radius: 50,
                            backgroundColor: Colors.deepPurple,
                            backgroundImage: AssetImage('assets/logo.webp'),
                          ),
                          SizedBox(
                            height: 50,
                          ),
                          Container(
                            alignment: Alignment.centerLeft,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.lightBlueAccent,
                                  blurRadius: 6,
                                  offset: Offset(0, 2),
                                ),
                              ],
                            ),
                            child: TextFormField(
                              keyboardType: TextInputType.emailAddress,
                              style: TextStyle(
                                color: Colors.black87,
                              ),
                              decoration: const InputDecoration(
                                border: InputBorder.none,
                                contentPadding: EdgeInsets.only(top: 14),
                                prefixIcon: Icon(
                                  Icons.email,
                                  color: Colors.black45,
                                ),
                                hintText: 'Email Address',
                                hintStyle: TextStyle(
                                  color: Colors.black38
                                ),
                              ),
                              validator: (value)
                              {
                                if(value == null || value.trim().isEmpty)
                                {
                                  return 'Please Enter your Email Address';
                                }
                                //Checking if the Email address has the right format.
                                if(!RegExp(r'\S+@\S+\.\S+').hasMatch(value))
                                {
                                  return 'Please Enter the Valid Email Address';
                                }
                                return null;
                              },
                              onChanged: (value)=> _Email = value,
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          //Password
                          Container(
                            alignment: Alignment.centerLeft,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.lightBlueAccent,
                                  blurRadius: 6,
                                  offset: Offset(0, 2),
                                ),
                              ],
                            ),
                            child: TextFormField(
                              style: TextStyle(
                                color: Colors.black87,
                              ),
                              decoration: const InputDecoration(
                                  border: InputBorder.none,
                                  contentPadding: EdgeInsets.only(top: 14),
                                  prefixIcon: Icon(
                                    Icons.lock,
                                    color: Colors.black45,
                                  ),
                                hintText: 'Password',
                                hintStyle: TextStyle(
                                  color: Colors.black38,
                                ),
                              ),
                              obscureText: true,
                              validator: (value){
                                if(value == null || value.trim().isEmpty)
                                {
                                  return 'This field is required';
                                }
                                if(value.trim().length<8)
                                {
                                  return 'The password should be at least 8 character length';
                                }
                                // Return null if the password is valid.
                                return null;
                              },
                              onChanged: (value)=> _password = value,
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Container(
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: Colors.deepPurple,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: RaisedButton(
                                textColor: Colors.black,
                                color: Colors.transparent,
                                elevation: 0,
                                child: Text('Submit'),
                                onPressed: (){
                                  _trysubmitform();
                                }
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Center(
                            child: Row(
                              children: [
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: RaisedButton(
                                      textColor: Colors.black,
                                      color: Colors.transparent,
                                      elevation: 0,
                                      child: Text('Sign Up'),
                                      onPressed: (){
                                        _trysubmitform();
                                      }
                                      ),
                                ),
                                SizedBox(width: 40),
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: RaisedButton(
                                      textColor: Colors.black,
                                      color: Colors.transparent,
                                      elevation: 0,
                                      child: Text('Forgot Password?'),
                                      onPressed: (){
                                        _trysubmitform();
                                      }
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        )
    );
  }
}
