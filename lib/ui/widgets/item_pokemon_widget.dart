import 'package:flutter/material.dart';
import 'package:flutter_codigo_pokedex/ui/widgets/item_type_widget.dart';

class ItemPokemonWidget extends StatelessWidget {
  String name;
  String image;
  List<String> types;
  ItemPokemonWidget({
    required this.name,
    required this.image,
    required this.types,
  });

  @override
  Widget build(BuildContext context) {
    print(types);
    return Container(
      decoration: BoxDecoration(
        color: Color(0xff4CCFB3),
        borderRadius: BorderRadius.circular(18.0),
      ),
      child: Stack(
        children: [
          Positioned(
            bottom: -20,
            right: -20,
            child: Image.asset(
              "assets/images/pokeball.png",
              height: 120.0,
              color: Colors.white.withOpacity(0.2),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 20,
              horizontal: 12,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                  ),
                ),
                /*Column(
                  children: types.map((e) => ItemTypeWidget()).toList(),
                )*/
                ...types
                    .map((e) => ItemTypeWidget(
                          text: e,
                        ))
                    .toList(),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Image.network(image),
          )
        ],
      ),
    );
  }
}
