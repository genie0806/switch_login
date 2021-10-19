import 'package:flutter/material.dart';
import 'package:randomlist_orietationbulder/fade_stack.dart';
import 'package:randomlist_orietationbulder/sign_in.dart';
import 'package:randomlist_orietationbulder/sign_up.dart';

class AuthState extends StatefulWidget {
  const AuthState({Key? key}) : super(key: key);

  @override
  _AuthStateState createState() => _AuthStateState();
}

class _AuthStateState extends State<AuthState>
    with SingleTickerProviderStateMixin {
  late AnimationController authCtl;
  int selectedForm = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            FadeStack(selectedForm: selectedForm),
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              height: 40,
              child: Container(
                color: Colors.white,
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      if (selectedForm == 0) {
                        selectedForm = 1;
                      } else {
                        selectedForm = 0;
                      }
                    });
                  },
                  child: const Text('sign Up',
                      style: TextStyle(color: Colors.black87)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
