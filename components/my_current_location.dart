import 'package:e_comm_food/models/restaurant.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyCurrentLocation extends StatelessWidget {
  MyCurrentLocation({super.key});

  final textController = TextEditingController();

  void openLocationSearchBox(BuildContext context){
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title:const Text("Your Location"),
        content:const TextField(
          decoration: InputDecoration(hintText:"Enter address.." ),
        ),
        actions: [
          //cancel
          MaterialButton(
            onPressed: () { Navigator.pop(context);
            textController.clear();
            },
            child: const Text("cancel"),
            ),

          //save
          MaterialButton(
            onPressed: () {

              //updt deliver addres
              String newAddress=textController.text;
              context.read<Restaurant>().updateDeliveryAddress(newAddress);
              Navigator.pop(context);
              textController.clear();
          },
          child: const Text("Save"),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Deliver now",
            style: TextStyle(color: Theme.of(context).colorScheme.primary),
            ),

          GestureDetector(
            onTap: () => openLocationSearchBox(context),
            child: Row(
              children: [
                // address
                 Consumer<Restaurant>(
                  builder: (context,restaurant,child)=>Text(
                    restaurant.deliveryAddress,
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary,
                    fontWeight: FontWeight.bold,
                  ),
                  )),
            
                //drop down menu
                Icon(Icons.keyboard_arrow_down_rounded),
              ],
            ),
          ),
        ],
      ),
    );
  }
}