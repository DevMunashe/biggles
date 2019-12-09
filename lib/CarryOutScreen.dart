import 'package:flutter/material.dart';



class CarryOutScreen extends StatelessWidget {
  CarryOutScreen({
    Key key,
    @required this.flipScreenCtrl,
  }) : super(key: key);

  final AnimationController flipScreenCtrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.transparent,
        ),
        body: Container(
          padding: const EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 0.0),
          child: ListView( // to prevent overflow on bottom
            //mainAxisAlignment: MainAxisAlignment.start,
            //crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Choose fiction book categories you like.",
                style: TextStyle(
                  height: 1.2,
                  color: Colors.black,
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 16.0,
              ),
              // Text(
              //   'We will recommended your personality based on\nyour choise.',
              //   style: TextStyle(
              //     color: Color(0xFFBBCCCC),
              //     fontSize: 16.0,
              //   ),
              // ),
              SizedBox(
                height: 15.0,
              ),
              
                 Column(
                  children: <Widget>[
                    SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                    child: Row(
                      
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[

                        Column(
                          mainAxisSize: MainAxisSize.min,
                           children: <Widget>[
                             Card(
                          // elevation: 5,
                              child: Container(
                                height: 150,
                                width: 100,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage("images/crime.jpg"),
                                    fit: BoxFit.cover,
                                    alignment: Alignment.topCenter,
                                  ),
                                ),
                               
                              ),
                            ),
                              Text("Crime",
                              style: TextStyle(
                                fontFamily: 'UbuntuBold'
                              ),),
                           ],

                        ),

                        Column(
                          mainAxisSize: MainAxisSize.min,
                           children: <Widget>[
                             Card(
                          // elevation: 5,
                              child: Container(
                                height: 150,
                                width: 100,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage("images/drama.jpg"),
                                    fit: BoxFit.cover,
                                    alignment: Alignment.topCenter,
                                  ),
                                ),
                               
                              ),
                            ),
                              Text("Drama",
                              style: TextStyle(
                                fontFamily: 'UbuntuBold'
                              ),
                              ),
                           ],

                        ),

                    Column(
                          mainAxisSize: MainAxisSize.min,
                           children: <Widget>[
                             Card(
                          // elevation: 5,
                              child: Container(
                                height: 150,
                                width: 100,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage("images/fairy.jpg"),
                                    fit: BoxFit.cover,
                                    alignment: Alignment.topCenter,
                                  ),
                                ),
                               
                              ),
                            ),
                              Text("Fairy Tales",
                              style: TextStyle(
                                fontFamily: 'UbuntuBold'
                              ),),
                           ],

                        ),


              
            
                      ],
                    ),
                    ),
                    SizedBox(
                      height: 26.0,
                    ),
                     SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                          mainAxisSize: MainAxisSize.min,
                           children: <Widget>[
                             Card(
                          // elevation: 5,
                              child: Container(
                                height: 150,
                                width: 100,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage("images/fantasy.jpg"),
                                    fit: BoxFit.cover,
                                    alignment: Alignment.topCenter,
                                  ),
                                ),
                               
                              ),
                            ),
                              Text("Fantasy",
                              style: TextStyle(
                                fontFamily: 'UbuntuBold'
                              ),),
                           ],

                        ),

                        Column(
                          mainAxisSize: MainAxisSize.min,
                           children: <Widget>[
                             Card(
                          // elevation: 5,
                              child: Container(
                                height: 150,
                                width: 100,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage("images/horror.jpg"),
                                    fit: BoxFit.cover,
                                    alignment: Alignment.topCenter,
                                  ),
                                ),
                               
                              ),
                            ),
                              Text("Horror",
                              style: TextStyle(
                                fontFamily: 'UbuntuBold'
                              ),),
                           ],

                        ),

                    Column(
                          mainAxisSize: MainAxisSize.min,
                           children: <Widget>[
                             Card(
                          // elevation: 5,
                              child: Container(
                                height: 150,
                                width: 100,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage("images/scifi.jpg"),
                                    fit: BoxFit.cover,
                                    alignment: Alignment.topCenter,
                                  ),
                                ),
                               
                              ),
                            ),
                              Text("Sci Fi",
                              style: TextStyle(
                                fontFamily: 'UbuntuBold'
                              ),),
                           ],

                        ),

                      ],
                    ),
                     ),
                  ],
                ),
              
              Container(
                padding: const EdgeInsets.only(top: 30.0),
                width: double.infinity,
                alignment: Alignment.center,
                child: RaisedButton(
                  onPressed: () {
                    if (flipScreenCtrl.status == AnimationStatus.completed) {
                      flipScreenCtrl.reverse();
                    } else {
                      flipScreenCtrl.animateTo(1.571, curve: Curves.bounceOut);
                    }
                  },
                  color: Color(0xFF000000),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 8.0, vertical: 12.0),
                    child: Text(
                      'Get Started',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
                 
              ),
                 Padding(
                   padding: EdgeInsets.only(top: 10.0),
                 ),
            ],
          ),
        ),
      ),
    );
  }
}