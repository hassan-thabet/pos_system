import 'package:flutter/material.dart';
import 'package:pos_system/presentation/screens/home_screen.dart';
import 'package:pos_system/presentation/widgets/custom_text_field.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Center(
        child: SizedBox(
          width: width / 3,
          height: height - 100,
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                height: height / 6,
                child: Image.asset("assets/images/logo.jpg"),
                //child: ,
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Mohammed Abd-Elmoaty',
                style: TextStyle(
                    fontFamily: 'Handlee',
                    color: Colors.black87,
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: height / 8,
              ),
              SizedBox(
                width: width / 3,
                child: Column(
                  children:  [
                    const CustomTextField('Username'),
                    const CustomTextField('Password'),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        onPressed: ()
                        {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(builder: (context) => const HomeScreen())
                          );
                        },
                        child: const Text('Login'),
                        style: ElevatedButton.styleFrom(
                          minimumSize: const Size(double.infinity, 54),
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
