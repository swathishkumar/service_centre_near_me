import 'package:flutter/material.dart';
import 'package:service_centre_near_me/ui/screens/detailscreen/detailscreen_view.dart';
import 'package:service_centre_near_me/ui/screens/homescreen/homescreen_view.dart';
import 'package:service_centre_near_me/ui/screens/searchscreen/searchview_model.dart';
import 'package:stacked/stacked.dart';

class SearchscreenView extends StatelessWidget {
  const SearchscreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomescreenView(),
                  ));
            },
            icon: Icon(Icons.arrow_back)),
      ),
      body: ViewModelBuilder.nonReactive(
        builder: (context, viewModel, child) {
          return Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Search for your nearest',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Text(
                    'service centre',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    controller: viewModel.brandname,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(), hintText: 'brandname'),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                      controller: viewModel.productname,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'productname')),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                      controller: viewModel.locationname,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(), hintText: 'location')),
                  SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => DetailscreenView(),
                            ));
                      },
                      child: Text('search'))
                ],
              ),
            ),
          );
        },
        viewModelBuilder: () {
          return SearchviewModel();
        },
      ),
    );
  }
}
