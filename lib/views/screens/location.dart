import 'package:cuaca_app/controllers/location_controller.dart';
import 'package:cuaca_app/utils/font.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class Location extends StatelessWidget {
  const Location({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    FontSize fontSize = FontSize(context);
    double screenWidth = MediaQuery.of(context).size.width;
    LocationController locationController = Get.put(LocationController());
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              child: Text(
                "Location",
                style: TextStyle(
                  fontSize: fontSize.h2,
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.primary,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Expanded(
              child: ListView(
                children: List.generate(
                  (locationController.locationList.length / 2).ceil(),
                  (rowIndex) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: List.generate(
                          2,
                          (colIndex) {
                            final index = rowIndex * 2 + colIndex;
                            return index <
                                    (locationController.locationList.length)
                                ? SizedBox(
                                    width: screenWidth * 0.45,
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                      ),
                                      onPressed: () {},
                                      child: Text(
                                        locationController.locationList[index],
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: fontSize.regular),
                                      ),
                                    ),
                                  )
                                : const SizedBox(width: 10);
                          },
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
