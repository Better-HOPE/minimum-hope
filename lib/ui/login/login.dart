import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:minimum_hope/model/repository/myApi.dart';

class Login extends HookConsumerWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final emailController = useTextEditingController();
    final passwordController = useTextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: AutofillGroup(
        child: Column(
          children: [
            TextField(
              controller: emailController,
              decoration: const InputDecoration(
                labelText: 'User Id',
              ),
              autofillHints: const <String>[AutofillHints.username],
            ),
            TextField(
              controller: passwordController,
              decoration: const InputDecoration(
                labelText: 'Password',
              ),
              autofillHints: const <String>[AutofillHints.password],
            ),
            ElevatedButton(
                onPressed: () {
                  funApi.User(emailController.text, passwordController.text);
                  funApi.checkLogin().then(
                    (value) {
                      if (!value) {
                        print('login failed');
                      } else {
                        context.go('/contents');
                      }
                    },
                  );
                },
                child: const Text('Login')),
          ],
        ),
      ),
    );
  }
}
