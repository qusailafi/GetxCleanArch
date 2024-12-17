

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controlers/categories/categories_controler.dart';
import '../widgets/card_widget.dart';

class Home extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    final CategoriesControler controler = Get.find<CategoriesControler>();
    return Scaffold(
      appBar: AppBar(
        title: Text("Categories"),
      ),
      body: Center(
        child: Obx(() {
          if (controler.isLoading.value) {
            return CircularProgressIndicator();
          }

          else if (controler.categories.isNotEmpty) {
            return ListView.builder(
              itemCount: controler.categories.length,
              itemBuilder: (BuildContext context, int index) {
                return InkWell(
                  onTap: () {
                    // controler.selectedCategory.value =
                    // controler.categories[index];
                    // Get.to(ProductsScreen());
                  },
                  child: cardWidget(
                    null,
                    Row(
                      children: [
                        const SizedBox(width: 10),
                        Text(
                          controler.categories[index],
                          style: const TextStyle(
                            fontSize: 20,
                            height: 3,
                            color: Colors.brown,
                          ),
                        ),
                      ],
                    ),
                    EdgeInsets.all(5),
                  ),
                );
              },
            );
          }



          else {
            return Text(controler.message.value);
          }
        }),
      ),
    );
  }
}