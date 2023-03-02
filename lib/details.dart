import 'package:flutter/material.dart';
import 'package:testui/Homescreen.dart';
import 'home.dart';
import 'main.dart';
import 'details.dart';

class Detail extends StatefulWidget {
  const Detail({Key? key}) : super(key: key);

  @override
  State<Detail> createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  int currenttab = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Padding(
          padding: EdgeInsets.all(8.0),
          child: Icon(Icons.arrow_back,color: Colors.black),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
                Icons.search,color: Colors.black
            ),
          ),
        ],
      ),
      body:  Container(
          height: double.infinity,
          width: double.infinity,
          color: Colors.white,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Container(
              color: Colors.transparent,
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Recent Transaction',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.deepPurple,
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(width: 150,),
                      Text(
                        'See all',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      RaisedButton(
                          textColor: Colors.black,
                          color: Colors.deepPurple,
                          elevation: 0,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                          child: Text('All',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                          onPressed: (){
                            setState(() {
                              currenttab = 0;
                            });
                          }
                      ),
                      SizedBox(width: 20,),
                      RaisedButton(
                          textColor: Colors.black,
                          color: Colors.deepPurple,
                          elevation: 0,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                          child: Text('Income',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                          onPressed: (){}
                      ),
                      SizedBox(width: 20,),
                      RaisedButton(
                          textColor: Colors.black,
                          color: Colors.deepPurple,
                          elevation: 0,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                          child: Text('Expense',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                          onPressed: (){}
                      ),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Today',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.deepPurple,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 20,),
                      Icon(
                        Icons.mail,color: Colors.black,
                      ),
                      SizedBox(width: 30,),
                      Column(
                        children: [
                          Text(
                              'Payment',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                              color: Colors.deepPurple,
                            ),
                          ),
                          SizedBox(height: 5.0,),
                          Text(
                            'Payment from Andrea',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 150,),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            '\$30.00',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Center(
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundColor: Colors.deepPurple,
                          backgroundImage: AssetImage('assets/a.jpg'),
                        ),
                        SizedBox(height:20),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: CircleAvatar(
                                radius: 30,
                                backgroundColor: Colors.deepPurple,
                                backgroundImage: AssetImage('assets/g.webp'),
                              ),
                            ),
                            SizedBox(width:250),
                            CircleAvatar(
                              radius: 30,
                              backgroundColor: Colors.deepPurple,
                              backgroundImage: AssetImage('assets/b.jpg'),
                            ),
                          ],
                        ),
                        CircleAvatar(
                          radius: 50,
                          backgroundColor: Colors.deepPurple,
                          backgroundImage: AssetImage('assets/c.jpg'),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: CircleAvatar(
                          radius: 30,
                          backgroundColor: Colors.deepPurple,
                          backgroundImage: AssetImage('assets/d.jpg'),
                        ),
                      ),
                      SizedBox(width:250),
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.deepPurple,
                        backgroundImage: AssetImage('assets/f.webp'),
                      ),
                    ],
                  ),
                  SizedBox(height: 20,),
                  RaisedButton(
                      textColor: Colors.black,
                      color: Colors.deepPurple,
                      elevation: 0,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                      child: Text('See Details',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                      onPressed: (){
                        setState(() {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Homescreen()));
                        });
                      }
                  ),
                ],
              ),
            ),
          ),
      ),
    );
  }
}
