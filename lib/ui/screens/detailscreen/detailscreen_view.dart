import 'package:flutter/material.dart';
import 'package:service_centre_near_me/ui/screens/searchscreen/searchscreen_view.dart';

class DetailscreenView extends StatelessWidget {
  const DetailscreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SearchscreenView(),
                  ));
            },
            icon: Icon()),
      ),
    );
  }
}
