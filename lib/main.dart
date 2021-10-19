import 'package:flutter/material.dart';
import 'package:randomlist_orietationbulder/auth_state.dart';
import 'package:randomlist_orietationbulder/fade_stack.dart';
import 'package:randomlist_orietationbulder/sign_in.dart';
import 'package:randomlist_orietationbulder/sign_up.dart';

void main() {
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Sign in test',
      home: AuthState(),
    );
  }
}
