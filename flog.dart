import 'package:flutter/material.dart';
import 'package:flutter2/ani/fd.dart';
import 'package:flutter2/ani/login.dart';

class Flog extends StatefulWidget {
  const Flog({Key? key}) : super(key: key);

  @override
  State<Flog> createState() => _FlogState();
}

class _FlogState extends State<Flog> {
  bool showpassword= true;

  @override
  void togglepassword() {
    setState(()
    {
      showpassword = !showpassword;
    });
  }
  var emailController=TextEditingController();
  var passwordController=TextEditingController();

  var email='',password='';
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [

          Padding(
            padding: const EdgeInsets.all(10),

            child: Text("Welcome",style: TextStyle(fontSize: 25,color: Colors.black),),
          ),
          Padding(
            padding: const EdgeInsets.all(5),
            child: Text("Enter your Email address to sign in ",style: TextStyle(fontSize: 15,color: Colors.black45),),
          ),
          Padding(
            padding: const EdgeInsets.all(5),
            child: Text("Enjoy you Food :) ",style: TextStyle(fontSize: 15,color: Colors.black45),),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: emailController,
              decoration: InputDecoration(
                  border:OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)
                  ),
                  label: Text("Email")

              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: passwordController,
              obscureText: showpassword,
              decoration: InputDecoration(
                  suffixIcon: InkWell(
                    onTap: () {
                      togglepassword();

                    },
                    child:showpassword?Icon (Icons.visibility):Icon(Icons.visibility_off),
                  ),


                  border:OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)
                  ),
                  label: Text("Password")

              ),
            ),
          ),


          Align(
            alignment: Alignment.centerRight,


            child: TextButton(onPressed: () {

            }, child:Text("Forget Password?",style: TextStyle(color: Colors.black45),)),
          ),


          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: 1200,
              height: 40,
              child: ElevatedButton(onPressed: () {

                Navigator.push(context, MaterialPageRoute(builder: (context) => FD()),);

                },

                  child: Text("SIGN IN",style: TextStyle(color: Colors.white),),
                  style:ButtonStyle(
                    backgroundColor:MaterialStateProperty.all(Colors.green),
                  )
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Dont have an account?"),


                TextButton(onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Freg()),);


                },
                    child: Text("Create new account", style: TextStyle(color: Colors.green),)
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),

            child: Center(child: Text("Or",style: TextStyle(fontSize: 20,color: Colors.black),)),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: 1200,
              height: 40,

              child: ElevatedButton.icon(
                icon: const Icon(
                  Icons.facebook_outlined,
                  color: Colors.white,
                  size: 24.0,
                ),
                label: const Text("CONNECT WITH FACEBOOK",style: TextStyle(color: Colors.white),),
                style:ButtonStyle(
                  backgroundColor:MaterialStateProperty.all(Color.fromRGBO(66, 103, 178, 8)),
                ),
                onPressed: () {},
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: 1200,
              height: 40,

              child: ElevatedButton.icon(
                icon: const Icon(
                  Icons.search_outlined ,
                  color: Color.fromRGBO(66, 103, 178, 8),
                  size: 24.0,
                ),
                label: const Text("CONNECT WITH GOOGLE",style: TextStyle(color: Colors.white),),
                style:ButtonStyle(
                  backgroundColor:MaterialStateProperty.all(Colors.blue),
                ),
                onPressed: () {},
              ),
            ),
          )


        ],
      ),
    );
  }
}
