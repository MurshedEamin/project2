import 'package:flutter/material.dart';
class MyRegister extends StatefulWidget {
  const MyRegister({super.key});

  @override
  State<MyRegister> createState() => _MyRegisterState();
}

class _MyRegisterState extends State<MyRegister> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/login.png"),
          fit: BoxFit.cover),
      ),
      child: Scaffold(
        appBar: AppBar(

          backgroundColor: Colors.transparent,
        ),
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              padding: const EdgeInsets.only(left: 55,top: 100,),
              child: const Text("Create\nAccount",style: TextStyle(color: Colors.cyan,fontSize: 25,fontWeight: FontWeight.w700),),
            ),
            SingleChildScrollView(
              padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*.25,left: 35,right: 35),
              child: Column(children: [
                TextField(
                  decoration: InputDecoration(
                    hintText: "Name",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)
                    ),
                  ),
                ),
                const SizedBox(height: 30,),
                TextField(
                  decoration: InputDecoration(
                    hintText: "e-mail",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)
                    ),
                  ),
                ),
                const SizedBox(height: 30,),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "password",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)
                    ),
                  ),
                ),
                const SizedBox(height: 30,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("Log in",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.green),),
                    CircleAvatar(radius: 25,backgroundColor: Colors.green,child: IconButton(color: Colors.white70,onPressed: (){
                      Navigator.pushNamed(context, 'login');},icon: const Icon(Icons.arrow_forward),),)
                  ],
                ),
                const SizedBox(height: 50,),
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(onPressed: (){},
                        child: const Text("Already have an account",style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            decoration: TextDecoration.underline),)),
                  ],
                )
              ],
              ),
            )
          ],
        ),

      ),
    );
  }
}
