import 'package:flutter/material.dart';
import 'package:map_demo/login_page.dart';

class Apex extends StatelessWidget {
  const Apex({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            children: [
              Image.asset('images/apex.png', width: 300, height: 300, alignment: Alignment.center,),
              SizedBox(height: 50,),
              const Text('Apex Head',
              style: TextStyle(
                // color: Colors.white,
                fontSize: 50,
                fontWeight: FontWeight.bold,
              ),
              ),
              const Text('Gear',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 50,),
              Row(
                children: [
                  SizedBox(width: 35,),
                    const Text('Made in India',
                      style: TextStyle(
                        // color: Colors.white,
                        fontSize: 30,
                      ),
                    ),
                  SizedBox(width: 50,),
                  Container(
                    color: Colors.blue,
                    child: IconButton(
                      onPressed: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>LoginPage()));
                      },
                      icon: const Icon(Icons.arrow_forward),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}


