import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  final String _phoneNumber = '+94 768398575';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        backgroundColor: Colors.grey,
        body: SafeArea(
            child: Column(
              children: [
                SizedBox(
                  height: 60.0,
                ),
                Center(
                  child:
                  CircleAvatar(
                    radius: 100.0,
                    backgroundImage: AssetImage('images/photo2.png'),
                  ),
                ),

                SizedBox(
                  height: 20.0,
                ),
                Text('Shahiru Edirisinghe',
                  style: TextStyle(
                      fontFamily: 'Pacifico',
                      fontSize: 40.0,
                    fontWeight: FontWeight.bold ,
                  ),
                ),
                Text('F L U T T E R      D E V O L O P E R',
                  style: TextStyle(
                    fontFamily: 'SourceSansPro',
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold ,
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                SizedBox(
                  height: 50.0,
                  width: 200.0,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.white),
                      shape: MaterialStatePropertyAll(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                          side: BorderSide(color:Colors.black)
                        )
                      )
                    ),
                    onPressed: () async{
                      final call = 'tel:$_phoneNumber';
                      if(await canLaunchUrlString(call)){
                        await launchUrlString(call);
                      }
                    },


                    child: Text('Get Call',style: TextStyle(
                      fontFamily: 'SourceSansPro',
                      color: Colors.black,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold ,
                    ),),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                SizedBox(
                  height: 50.0,
                  width: 200.0,
                  child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(Colors.white),
                        shape: MaterialStatePropertyAll(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                                side: BorderSide(color:Colors.black)
                            )
                        )
                    ),
                    onPressed: () async{
                      final text = 'sms:$_phoneNumber';
                      if(await canLaunchUrlString(text)){
                        await launchUrlString(text);
                      }
                    },
                    child: Text('Send Messages',style: TextStyle(
                      fontFamily: 'SourceSansPro',
                      color: Colors.black,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold ,
                    ),),
                  ),
                )


              ],
            )
        ),
      ),
    );
  }
}

