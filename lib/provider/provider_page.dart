import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_exemple/provider/user_model.dart';

class ProviderPage extends StatelessWidget {
  const ProviderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<UserModel>(context);
    //read ele vai retornar uma instancia sem ficar escutando alteraçoes
    // var user = context.read<UserModel>();
    // var imageAvatar = context.select<UserModel, String>((userModel) = > userModel.imgAvatar);
    // var user = context.watch<UserModel>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Provider'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(user.imgAvatar),
                radius: 160,
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(user.name),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(user.birthDate)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
