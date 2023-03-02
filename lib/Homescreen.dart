import 'package:flutter/material.dart';
import 'home.dart';
import 'main.dart';
import 'details.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  int currentTab = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Padding(
            padding: EdgeInsets.all(8.0),
          child: Icon(Icons.menu,color: Colors.black),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
                Icons.add,color: Colors.black
            ),
          ),
        ],
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.white,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: <Widget>[
              Padding(
                padding:EdgeInsets.all(10.0),
                child: CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.deepPurple,
                  backgroundImage: AssetImage('assets/g.webp'),
                ),
              ),
              Text(
                  'Hira Riaz',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.deepPurple,
                  fontSize: 20,
                ),
              ),
              SizedBox(height: 5,),
              Text(
                'UX / UI Designer',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 10,
                ),
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    children: [
                      Text(
                        '\$8900',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.deepPurple,
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(height: 10,),
                      Text(
                        'Income',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 10,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        '\$5500',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.deepPurple,
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(height: 10,),
                      Text(
                        'Expenses',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 10,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        '\$890',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.deepPurple,
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(height: 10,),
                      Text(
                        'Loan',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 10,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height:40),
              Row(
                children: <Widget>[
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 90.0,left: 10.0),
                        child: Text(
                          'Overview',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.deepPurple,
                            fontSize: 30,
                          ),
                        ),
                      ),
                      Icon(Icons.notifications),
                      SizedBox(width: 40),
                      Text(
                        'Sept 13,2023',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.deepPurple,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 30,),
              Column(
                children: <Widget>[
                  Container(
                    color: Colors.transparent,
                    height: 70,
                    child: Card(
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 50),
                              child: Icon(
                                Icons.arrow_upward_rounded,color: Colors.black,
                              ),
                          ),
                          Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 50,right: 70),
                                child: Text(
                                    'Sent',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                              Row(
                                children: [
                                  SizedBox(width: 85,),
                                  Text(
                                    'Senting Payment to client',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 10,
                                    ),
                                  ),
                                  SizedBox(width: 18,),
                                  Padding(
                                    padding: EdgeInsets.only(left: 70),
                                    child: Text(
                                      '\$150',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                        fontSize: 15,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    color: Colors.transparent,
                    height: 70,
                    child: Card(
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 50),
                            child: Icon(
                              Icons.arrow_downward_rounded,color: Colors.black,
                            ),
                          ),
                          Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 50,right: 70),
                                child: Text(
                                  'Receive',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 50),
                                    child: Text(
                                      'Receving Salary from the Company',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 10,
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 25,),
                                  Padding(
                                    padding: EdgeInsets.only(left: 50),
                                    child: Text(
                                      '\$250',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                        fontSize: 15,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    color: Colors.transparent,
                    height: 70,
                    child: Card(
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 50),
                            child: Icon(
                              Icons.monetization_on,color: Colors.black,
                            ),
                          ),
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 10.0),
                                child: Text(
                                  'Loan',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                              Row(
                                children: [
                                  SizedBox(width: 75,),
                                  Text(
                                    'Loan for the car',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 10,
                                    ),
                                  ),
                                  SizedBox(width: 85,),
                                  Padding(
                                    padding: EdgeInsets.only(left: 50),
                                    child: Text(
                                      '\$250',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                        fontSize: 15,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: IconButton(
                  onPressed: (){
                    setState(() {
                      currentTab = 0;
                    });
                  },
                  icon: Icon(Icons.home,color: currentTab == 0 ? Colors.blue : Colors.grey),
              ),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: IconButton(
                onPressed: (){
                  setState(() {
                    currentTab = 1;
                  });
                },
                icon: Icon(Icons.wallet,color: currentTab == 1 ? Colors.blue : Colors.grey),
              ),
              label: "Wallet",
            ),
            BottomNavigationBarItem(
              icon: IconButton(
                onPressed: (){
                  setState(() {
                    currentTab = 2;
                  });
                },
                icon: Container(
                  height: 30,
                    width: 30,
                    color: Colors.black,
                    child: Icon(
                        Icons.add,
                        color: currentTab == 2 ? Colors.blue : Colors.white)),
              ),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: IconButton(
                onPressed: (){
                  setState(() {
                    currentTab = 3;
                  });
                },
                icon: Icon(Icons.attach_money,color: currentTab == 3 ? Colors.blue : Colors.grey),
              ),
              label: "Invest",
            ),
            BottomNavigationBarItem(
              icon: IconButton(
                onPressed: (){
                  setState(() {
                    currentTab = 4;
                  });
                },
                icon: Icon(Icons.account_circle,color: currentTab == 4 ? Colors.blue : Colors.grey),
              ),
              label: "Account",
            ),
          ]
      ),
    );
  }
}
