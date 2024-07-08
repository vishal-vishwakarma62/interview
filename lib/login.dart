import 'package:flutter/material.dart';
import 'package:interview/Appcolor.dart';
import 'package:interview/home.dart';
import 'package:interview/registration.dart';
class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  bool _isChecked = false;

  bool passwordVisible=false;
  int isValue =0;

  @override
  void initState(){
    super.initState();
    passwordVisible=true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
       child: Column(
          children: [
            Stack(
                children: [
                  Container(
                    height: 200,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.yellow
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(25),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Login",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                          Text("In publishing and graphic design,",style: TextStyle(fontWeight: FontWeight.w500),),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30,top: 170),
                    child: Row(
                      children: [
                        InkWell(
                          onTap: (){
                            setState(() {
                              isValue =0;
                            });
                          },
                          child: Container(
                            height: 55,
                            width: 165,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(17),
                              color: isValue==0? Colors.yellow: Colors.white
                            ),
                            child: Center(child: Text('Enrollment ID')),
                          ),
                        ),
                        InkWell(
                          onTap: (){
                            setState(() {
                              isValue =1;
                            });
                          },
                          child: Container(
                            height: 55,
                            width: 165,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(17),
                                color: isValue==1? Colors.yellow : Colors.white
                            ),
                            child: Center(child: Text('Email')),
                          ),
                        ),
                      ],
                    ),
                  )
                ],

              ),
            Padding(
              padding: const EdgeInsets.only(left: 10,right: 10,top: 60),
              child: TextField(
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(7),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(7),
                        borderSide: BorderSide(
                            width: 0,
                            style: BorderStyle.none
                        )
                    ),
                    hintText: "Enter Your Email",
                    prefixIcon: Icon(Icons.account_circle_outlined),
                    filled: true,
                    fillColor: Colors.white
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10,right: 10,top: 30),
              child: TextField(
                obscureText: passwordVisible,
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(7),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(7),
                        borderSide: BorderSide(
                            width: 0,
                            style: BorderStyle.none
                        )
                    ),
                    hintText: "Enter Your Password",
                    prefixIcon: IconButton(
                      icon: Icon(passwordVisible ? Icons.visibility : Icons.visibility_off),
                      onPressed: () {
                        setState(
                              () {
                            passwordVisible = !passwordVisible;
                          },
                        );
                      },
                    ),
                    filled: true,
                    fillColor: Colors.white
                ),
                keyboardType: TextInputType.visiblePassword,
                textInputAction: TextInputAction.done,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Row(
                children: [
                  Container(
                      padding: EdgeInsets.all(10),
                      child: Checkbox(
                        activeColor: Colors.yellow,
                        value: _isChecked,
                        onChanged: (value) {
                          setState(() {
                            _isChecked = value!;
                          });
                        },
                      )
                  ),
                  Expanded(child: Text("Remember me")),
                  Text("Forgote Password ?")

                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10,right: 10,top: 30),
              child: InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => home(),));
                },
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.black
                  ),
                  child: Center(child: Text("Sign In",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white),),),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Text("Don’t have an account ?",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey),),
            ),
            InkWell(
                onTap: (){
                  Navigator.push(context,  MaterialPageRoute(builder: (context) => registration(),));
                },
                child: Text('Please Register ',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blue,decoration: TextDecoration.underline),))
          ],
        ),
      ),

    );

  }
}

