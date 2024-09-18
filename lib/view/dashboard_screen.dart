import 'package:first_app/constants/images_assets.dart';
import 'package:first_app/constants/styles.dart';
import 'package:first_app/mock/product_fake_db.dart';
import 'package:first_app/models/produto_model.dart';
import 'package:first_app/widgets/card_produto.dart';
import 'package:first_app/widgets/container_propaganda.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Minha dasboard'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: Image.asset(
                  AppImages.logoCarrot,
                  height: 65,
                ),
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.location_on),
                  Text("Cotia, São Paulo"),
                ],
              ),
              Padding(
                padding: EdgeInsets.all(32.0),
                child: TextField(
                  decoration: textFieldDecoration,
                ),
              ),
              ContainerPropaganda(),
              Text("oFERTAS"),
              SizedBox(
                // height: 400,
                child: GridView.builder(
                  shrinkWrap: true,
                  primary: false,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: appProducts.length,
                  
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, childAspectRatio: 0.8,
                  ),
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: CardProduto(produto: appProducts[index]),
                    );
                  },
                ),
              ),
              Text("Mais vendidos"),
              Text("Cards de frutas "),
              const SizedBox(
                height: 250,
              )
            ],
          ),
        ),
      ),
    );
  }
}
