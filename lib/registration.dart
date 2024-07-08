import 'package:flutter/material.dart';
import 'package:interview/Appcolor.dart';
class registration extends StatefulWidget {
  const registration({super.key});

  @override
  State<registration> createState() => _registrationState();
}

class _registrationState extends State<registration> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children:[ Container(
                height: 250,
                width: double.infinity,
                color: Appcolor.PrimaryColor1,
                child: Padding(
                  padding: const EdgeInsets.all(25),
                  child: Column(
                    children: [
                      SizedBox(height: 30,),
                      Text('Registered',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                      Text('In publishing and graphic design,'),
                      SizedBox(height: 90,),

                    ],
                  ),
                ),
              ),
                Padding(
                  padding: const EdgeInsets.only(top: 180),
                  child: Container(
                    height: 120,
                    decoration: BoxDecoration(
                        color: Colors.grey,
                      border: Border.all(color: Colors.white,width: 5),
                      shape: BoxShape.circle
                    ),
                  ),
                )
             ]
            ),
            TextField(
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.black12,
                  hintText: 'Email Address',hintStyle: TextStyle(color: Colors.black54,fontSize: 14),
                  prefixIcon: Icon(Icons.mail_outline,color: Colors.black54,),
                  border:OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(
                        width: 0,
                        style: BorderStyle.none,

                      )
                  )
              ),
            ),
            SizedBox(height: 30,),
            TextField(
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.black12,
                  hintText: 'Mobile Number',hintStyle: TextStyle(color: Colors.black54,fontSize: 14),
                  prefixIcon: Icon(Icons.phone_android,color: Colors.black54,),

                  border:OutlineInputBorder(

                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(
                        width: 0,
                        style: BorderStyle.none,

                      )
                  )
              ),
            ),
            SizedBox(height: 30,),
            TextField(
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.black12,
                  hintText: 'Password',hintStyle: TextStyle(color: Colors.black54,fontSize: 14),
                  prefixIcon: Icon(Icons.remove_red_eye,color: Colors.black54,),
                  border:OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(
                        width: 0,
                        style: BorderStyle.none,

                      )
                  )
              ),
            ),
            SizedBox(height: 30,),
            TextField(
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.black12,
                  hintText: 'Re-Password',hintStyle: TextStyle(color: Colors.black54,fontSize: 14),
                  prefixIcon: Icon(Icons.remove_red_eye,color: Colors.black54,),

                  border:OutlineInputBorder(

                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(
                        width: 0,
                        style: BorderStyle.none,

                      )
                  )
              ),
            ),
            SizedBox(height: 40,),
            TextButton(
              onPressed: (){
                showDialog(context: context, builder: (context) => AlertDialog(
                  title: Container(
                    height: 392,
                    width: 265,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.white
                    ),
                    child: Column(
                      children: [
                        Image.asset('assets/icon1.png'),
                        SizedBox(height: 20,),
                        Text('Congratulations !',style: TextStyle(color: Colors.blue),),
                        SizedBox(height: 20,),
                        Text('You account is ready to use. You wil \nbe redirected to the Home page in a \nfew seconds.',style: TextStyle(fontSize: 12),textAlign: TextAlign.center,)
                      ],
                    ),
                  ),
                ),);
              },
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.black,
                ),
                child: Center(child: Text('Registerd',style: TextStyle(fontSize: 18,color: Colors.white60),)),
              ),
            ),
            SizedBox(height: 30,),
            Text('Don’t have an account ?',style: TextStyle(fontSize: 18),),
            Text('Please Register ',style: TextStyle(fontSize: 18,color: Colors.blue),),
          ],
        ),
      ),
    );
  }
}
