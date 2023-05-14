import 'package:flutter/material.dart';

import 'package:fl_components/widgets/widgets.dart';

void main() => runApp(const CardScreen());

class CardScreen extends StatelessWidget {
  const CardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Material App Bar'),
        ),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          children: const [
            CustomeCardType1(),
            SizedBox(
              height: 10,
            ),
            CustomCardType2(
                name: 'Un hermoso paisaje',
                imageUrl:
                    'https://epsep.com.mx/wp-content/uploads/2020/10/travel-landscape-01.jpg'),
            SizedBox(
              height: 20,
            ),
            CustomCardType2(
                imageUrl:
                    'https://thelandscapephotoguy.com/wp-content/uploads/2019/01/landscape%20new%20zealand%20S-shape.jpg'),
            SizedBox(
              height: 20,
            ),
            CustomCardType2(
                imageUrl:
                    'https://fotoarte.com.uy/wp-content/uploads/2019/03/Landscape-fotoarte.jpg'),
            SizedBox(
              height: 100,
            ),
          ],
        ));
  }
}
