import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(

        child: Row(
          children: [



            Expanded(

              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.fromLTRB(80.0, 60.0, 40.0, 30.0),
                  child: Column(

                    crossAxisAlignment: CrossAxisAlignment.stretch,

                    children: [

                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset('assets/logo.png'),
                            SizedBox(
                              height: 20.0,
                            ),

                            Text('Login', style: TextStyle(color: Colors.indigo, fontWeight: FontWeight.w800, fontSize: 30.0),),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      Text('Welcome to D-Community', style: TextStyle(color: Colors.black, fontSize: 25.0),),

                      SizedBox(
                        height: 10.0,
                      ),

                      Text('Please login to your account and start searching for jobs...', style: TextStyle(color: Colors.black38),),

                      SizedBox(
                        height: 50.0,
                      ),
                      Container(
                          child: Row(
                            children: [


                              Text('Mobile Number ', style: TextStyle(fontWeight: FontWeight.w900)),

                              Text('*', style: TextStyle(fontWeight: FontWeight.w900, color: Colors.red)),
                            ],
                          )

                      ),


                      SizedBox(
                        height: 20.0,
                      ),
                      TextField(
                        decoration: InputDecoration(
                            hintText: 'Enter your mobile number',
                            contentPadding: const EdgeInsets.all(15),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30))),
                        onChanged: (value) {
                          // do something
                        },
                      ),

                      SizedBox(
                        height: 20.0,
                      ),

                      Text('Enter OTP', style: TextStyle(fontWeight: FontWeight.w900),),


                      SizedBox(
                        height: 20.0,
                      ),

                      TextFormField(
                        decoration: InputDecoration(
                            hintText: '',
                            prefixIcon: Icon(Icons.lock),
                            contentPadding: const EdgeInsets.all(15),
                            border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                        ),

                        onChanged: (value) {
                          // do something
                        },
                      ),

                      SizedBox(
                        height: 40.0,
                      ),

                      ElevatedButton(
                        onPressed: () {
                          debugPrint('ElevatedButton Clicked');
                        },
                        child: Padding(
                            padding: EdgeInsets.fromLTRB(0.0, 12.0, 0.0, 12.0),
                            child: Text('Send OTP',style: TextStyle(fontSize: 15.0),)),
                        style: ElevatedButton.styleFrom(shape: StadiumBorder(),),
                      ),


                    ],
                  ),
                ),
              ),
            ),

            Expanded(
              child: Image(
                image: AssetImage('assets/Frame_1.jpg'),
                width: double.infinity,
                fit: BoxFit.fill,

              ),
            )
          ],
        ),
      ),
    );
  }
}
