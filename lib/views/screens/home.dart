import 'package:cuaca_app/utils/font.dart';
import 'package:cuaca_app/views/widgets/item_container.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    FontSize fontSize = FontSize(context);
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              child: Text(
                "Jakarta Barat",
                style: TextStyle(
                  fontSize: fontSize.h1,
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.primary,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              alignment: Alignment.center,
              width: 150,
              height: 150,
              child: Image.asset('assets/images/sun.png'),
            ),
            SizedBox(
              height: screenHeight / 10,
            ),
            Container(
              alignment: Alignment.center,
              child: Text(
                "37°C",
                style: TextStyle(
                  fontSize: fontSize.h2,
                  fontWeight: FontWeight.normal,
                  color: Theme.of(context).colorScheme.primary,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: Text(
                "Cerah Berawan",
                style: TextStyle(
                  fontSize: fontSize.h4,
                  fontWeight: FontWeight.normal,
                  color: Theme.of(context).colorScheme.primary,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              width: screenWidth / 1.2,
              alignment: Alignment.center,
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: ItemContainer(
                      title: "Humidity",
                      subtitle: "18%",
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: ItemContainer(
                      title: "Winds",
                      subtitle: "9 km/h",
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
