import 'package:flutter/material.dart';
import 'package:randomlist_orietationbulder/sign_in.dart';
import 'package:randomlist_orietationbulder/sign_up.dart';

class FadeStack extends StatefulWidget {
  final int selectedForm;

  const FadeStack({Key? key, required this.selectedForm}) : super(key: key);

  @override
  _FadeStackState createState() => _FadeStackState();
}

class _FadeStackState extends State<FadeStack>
    with SingleTickerProviderStateMixin {
  List<Widget> forms = [const SignUpForm(), const SigninForm()];
  late AnimationController authCtl;

  @override
  void initState() {
    authCtl = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 300));
    authCtl.forward();
    super.initState();
  }

  @override
  void didUpdateWidget(covariant FadeStack oldwidget) {
    if (widget.selectedForm != oldwidget.selectedForm) {
      authCtl.forward(from: 0.0);
    }
    super.didUpdateWidget(oldwidget);
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: authCtl,
      child: IndexedStack(
        children: forms,
        index: widget.selectedForm,
      ),
    );
  }
}
