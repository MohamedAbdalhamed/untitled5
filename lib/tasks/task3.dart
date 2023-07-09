import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Register"),
      ),
      body: Container(
        margin: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextFormField(
              textInputAction: TextInputAction.next,
              decoration: const InputDecoration(
                labelText: 'Username',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextFormField(
              textInputAction: TextInputAction.next,
              decoration: const InputDecoration(
                labelText: 'Firstname',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20,),
            TextFormField(
              textInputAction: TextInputAction.next,
              decoration: const InputDecoration(
                labelText: 'Lastname',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20,),

            TextFormField(
              textInputAction: TextInputAction.next,
              decoration: const InputDecoration(
                  labelText: 'E-mail',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(
                      Icons.email
                  )
              ),
            ),
            const SizedBox(height: 20,),

            TextFormField(
              textInputAction: TextInputAction.done,
              decoration: const InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(
                      Icons.password
                  )
              ),
            ),
            const SizedBox(height: 20,),
            TextFormField(
              textInputAction: TextInputAction.done,
              decoration: const InputDecoration(
                  labelText: 'Confirm Password',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(
                      Icons.password
                  )
              ),
            ),

            const SizedBox(height: 20,),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: ElevatedButton(
                    style:
                    ElevatedButton.styleFrom(shape: const StadiumBorder()),
                    onPressed: () {  },
                    child: const Text(
                        "Sign Up"
                    ),



                  ),
                ),
              ],

            ),

          ],
        ),




      ),



    );
  }
}
