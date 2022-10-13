import 'package:flutter/material.dart';
import 'package:map_demo/home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // backgroundColor: Colors.black,
        body: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            children : [
            Text('Apex Head',
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text('Gear',
              style: TextStyle(
                color: Colors.blue,
                fontSize: 50,
                fontWeight: FontWeight.bold,
              ),
            ),
              SizedBox(height: 50,),
              TextField(
                decoration: InputDecoration(
                  hintText: "Enter Username",
                  labelText: "Username",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20,),
              TextField(
                decoration: InputDecoration(
                hintText: "Enter Password",
                labelText: "Password",
                  border: OutlineInputBorder(),
    ),
              ),
              SizedBox(height: 30,),
              TextButton(
                      onPressed: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>HomePage()));
                      },
                      child: Text('SIGN IN',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                      ),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.white),
                      padding: MaterialStateProperty.all(EdgeInsets.symmetric(vertical: 16.0, horizontal: 50.0),),
                    ),
                  ),
              SizedBox(height: 50,),
              TextButton(
                onPressed: (){},
                child: Text('Login with Google',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                  ),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.white),
                  padding: MaterialStateProperty.all(EdgeInsets.symmetric(vertical: 16.0, horizontal: 70.0),),
                ),
              ),
              SizedBox(height: 20,),
              TextButton(
                onPressed: (){},
                child: Text('Login with Facebook',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                  ),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.white),
                  padding: MaterialStateProperty.all(EdgeInsets.symmetric(vertical: 16.0, horizontal: 60.0),),
                ),
              ),
              SizedBox(height: 20,),
              Text("Don't have an account? Sign In"),

              // TextFormField(
              //   decoration: InputDecoration(
              //     hintText:"Enter Username",
              //     labelText: "Username",
              //   ),
              //   validator: (value) {
              //     if(value!.isEmpty){
              //       return "Username can't be empty";
              //     }
              //     return null;
              //   },
              //   onChanged: (value){
              //     name = value;
              //     setState((){});
              //   },
              // ),
              // TextFormField(
              //   obscureText: true,
              //   decoration: InputDecoration(
              //     hintText:"Enter Password",
              //     labelText: "Password",
              //   ),
              //   validator: (value) {
              //     if(value!.isEmpty){
              //       return "Password can't be empty";
              //     }
              //     else {
              //       if(value.length<6){
              //         return "Password length should be atleast 6";
              //       }
              //     }
              //     return null;
              //   },
              // ),
          ],
          ),
        ),
      ),);
  }
}
