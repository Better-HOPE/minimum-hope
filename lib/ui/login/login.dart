import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:minimum_hope/data/api/api.dart';

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
                labelText: 'Email',
              ),
              autofillHints: const <String>[AutofillHints.email],
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
                  Api a = Api();
                  a.User(emailController.text, passwordController.text);
                  a.getTasks().then(
                    (value) {
                      if (value != 'error') {
                      } else {}
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
