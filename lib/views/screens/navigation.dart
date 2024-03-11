import 'package:cuaca_app/controllers/navigation_controller.dart';
import 'package:cuaca_app/views/screens/home.dart';
import 'package:cuaca_app/views/screens/location.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Navigation extends StatelessWidget {
  const Navigation({super.key});

  buildBottomNavigationMenu(context, navigationController) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Obx(() => MediaQuery(
        data: MediaQuery.of(context)
            .copyWith(textScaler: const TextScaler.linear(1.0)),
        child: SizedBox(
          height: screenHeight * 0.12,
          child: BottomNavigationBar(
            showUnselectedLabels: true,
            showSelectedLabels: true,
            onTap: navigationController.changeTabIndex,
            currentIndex: navigationController.tabIndex.value,
            backgroundColor: Theme.of(context).colorScheme.primary,
            unselectedItemColor: Colors.white.withOpacity(0.5),
            selectedItemColor: Theme.of(context).colorScheme.primaryContainer,
            items: [
              BottomNavigationBarItem(
                icon: const Icon(
                  Icons.home,
                  size: 20.0,
                ),
                label: 'Home',
                backgroundColor: Theme.of(context).colorScheme.primary,
              ),
              BottomNavigationBarItem(
                icon: const Icon(
                  Icons.location_pin,
                  size: 20.0,
                ),
                label: 'Location',
                backgroundColor: Theme.of(context).colorScheme.primary,
              ),
              BottomNavigationBarItem(
                icon: const Icon(
                  Icons.settings,
                  size: 20.0,
                ),
                label: 'Settings',
                backgroundColor: Theme.of(context).colorScheme.primary,
              ),
            ],
          ),
        )));
  }

  @override
  Widget build(BuildContext context) {
    final NavigationController navigationController =
        Get.put(NavigationController(), permanent: false);
    return Scaffold(
      bottomNavigationBar:
          buildBottomNavigationMenu(context, navigationController),
      body: Obx(() => IndexedStack(
            index: navigationController.tabIndex.value,
            children: const [Home(), Location()],
          )),
    );
  }
}
