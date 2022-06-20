import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_exemple/provider/provider_page.dart';
import 'package:provider_exemple/provider/user_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (_) {
        return UserModel(
            name: 'Diogo Moreira',
            imgAvatar:
                'https://static.wikia.nocookie.net/looney-tunes/images/a/a3/Taz.png/revision/latest/scale-to-width-down/1000?cb=20151220203750&path-prefix=pt-br',
            birthDate: '05-05-1995');
      },
      child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          routes: {'/provider': (_) => const ProviderPage()},
          home: Builder(builder: (context) {
            return Scaffold(
              body: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pushNamed('/provider');
                        },
                        child: const Text('Provider')),
                    ElevatedButton(
                        onPressed: () {}, child: const Text('Change Notifiel')),
                  ],
                ),
              ),
            );
          })),
    );
  }
}
