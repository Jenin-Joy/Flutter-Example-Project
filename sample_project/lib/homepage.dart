import 'package:flutter/material.dart';
import 'package:sample_project/grid_view.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color cont1 = Colors.blue;
  Color bgcolor = Colors.white;
  Color blackcolor = Colors.black;
  var dt = "Dark Theme";

  bool dark = false;

  int _clickCount = 0;
  final List<Color> _colors = [
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.yellow,
    Colors.purple,
    Colors.orange,
  ];

  void _handleClick() {
    setState(() {
      _clickCount = (_clickCount + 1) % _colors.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: dark?Colors.black: Colors.white,
      appBar: AppBar(
        title: Text("Welcome To My Application", style: TextStyle(
          color: Colors.white,
          fontSize: 20
        ),),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.home,color: Colors.white,),
          )
        ],
        backgroundColor: Colors.blue[600],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(10)
          )
        ),
      ),
      drawer: Drawer(
        
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(image: AssetImage('assets/School Tuition.png'), fit: BoxFit.cover),
                              borderRadius: BorderRadius.vertical(
                                bottom: Radius.circular(20),
                                top: Radius.circular(20),
                              ),
                              color: dark ? Colors.white : Colors.black,
                            ),
                            // child: Image.asset("assets/School Tuition.png", width: 180, fit: BoxFit.,),
                            height: 180,
                            width: 180,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(image: AssetImage('assets/School Tuition.png'), fit: BoxFit.cover),
                              borderRadius: BorderRadius.vertical(
                                bottom: Radius.circular(20),
                                top: Radius.circular(20),
                              ),
                              color: dark ? Colors.white : Colors.black,
                            ),
                            height: 180,
                            width: 180,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 100,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.vertical(
                          bottom: Radius.circular(20),
                          top: Radius.circular(20)
                        ),
                        color:Colors.yellow, 
                      ),
                      height: 80,
                      width: 1000,
                      child: Center(
                        child: Text("Hai"),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => GridPage(),));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.vertical(
                            bottom: Radius.circular(20),
                            top: Radius.circular(20),
                          ),
                          color: Colors.red[700]
                        ),
                        height: 80,
                        width: 1000,
                        child: Center(child: Text("Get Started"),),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            _handleClick();
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.vertical(
                              bottom: Radius.circular(20),
                              top: Radius.circular(20),
                            ),
                            color: _colors[_clickCount],
                            ),
                            height: 80,
                            width: 175,
                            child: Center(child: Text("Welcome",style:TextStyle(
                              color: Colors.white
                            ))),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              dark=!dark;
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.vertical(
                                bottom: Radius.circular(20),
                                top: Radius.circular(20)
                              ),
                              color: dark ? Colors.white:Colors.black
                            ),
                            height: 80,
                            width: 175,
                            // child: Center(
                            //  child: Icon(Icons.light_mode_outlined, color: Colors.white,)
                            // ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(dark ? "Light Theme" : "Dark Theme", style: TextStyle(color: dark? Colors.black : Colors.white),),
                                SizedBox(
                                  width: 10,
                                ),
                                Icon(dark ? Icons.light_mode_outlined : Icons.dark_mode_outlined ,color: dark ? Colors.black : Colors.white,)
                              ],
                            )
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      )
    );
  }
}