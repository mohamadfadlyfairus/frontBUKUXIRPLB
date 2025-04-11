import 'package:flutter/material.dart';

class LoginPages extends StatefulWidget {
  const LoginPages({super.key});

  @override
  State<LoginPages> createState() => _LoginPagesState();
}

class _LoginPagesState extends State<LoginPages> {
  final TextEditingController emailTextController = TextEditingController();
  final TextEditingController passwordTextController = TextEditingController();
  final passwordVisible = false;
  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Center(
            heightFactor: 1.0,
            widthFactor: 5.0,
            child: Padding(
                padding: EdgeInsets.fromLTRB(40, 90, 40, 30),
                child: Text(
                  "BukuKu",
                  style: TextStyle(
                      color: Color.fromARGB(201, 8, 160, 112),
                      fontSize: 38,
                      fontWeight: FontWeight.bold),
                )),
          ),
          const Center(
            heightFactor: 1.2,
            child: Column(children: [
              Padding(
                padding: EdgeInsets.all(9),
                child: Text(
                  "Login",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                      color: Color.fromARGB(246, 75, 75, 75)),
                ),
              )
            ]),
          ),
          Opacity(
              opacity: 0.3,
              child: Form(
                  child: Container(
                      width: MediaQuery.of(context).size.width / 1.2,
                      height: MediaQuery.of(context).size.height / 3.5,
                      decoration: const BoxDecoration(
                          color: Color.fromARGB(0, 223, 24, 24),
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: Padding(
                          padding: const EdgeInsets.fromLTRB(30, 20, 30, 5),
                          child: Column(
                            children: [
                              //Username Field
                              TextFormField(
                                controller: emailTextController,
                                validator: (Value) {
                                  if (Value == null || Value.isEmpty) {
                                    return "Email tidak boleh kosong";
                                  }
                                  return null;
                                },
                                textAlign: TextAlign.start,
                                maxLines: 1,
                                decoration:  InputDecoration(
                                  hintText: "Email/Username",
                                 prefixIcon: const Icon(
                                    Icons.email,
                                    color: Colors.black,
                                    ),
                                    focusedBorder:OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20)
                                    ) ,
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20),
                                      
                                    )
                                ),

                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                                child: TextFormField(
                                  controller: passwordTextController,
                                 
                                  textAlign: TextAlign.start,
                                  maxLines: 1,
                                  decoration:  InputDecoration(
                                    hintText: "Password",
                                   prefixIcon: const Icon(
                                      Icons.key,
                                      color: Colors.black,
                                      ),
                                      focusedBorder:OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(20)
                                      ) ,
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(20),
                                        
                                      )
                                  ),
                                
                                ),
                              )
                            ],
                          ))))),
        ],
      ),
    );
  }
}
