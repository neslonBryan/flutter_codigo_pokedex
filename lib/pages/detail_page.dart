import 'package:flutter/material.dart';
import 'package:flutter_codigo_pokedex/ui/widgets/item_data_widget.dart';
import 'package:flutter_codigo_pokedex/ui/widgets/item_type_widget.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color(0xff49D0B0),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xff49D0B0),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.favorite_border_outlined),
          ),
        ],
      ),
      body: Stack(
        children: [
          Positioned(
            top: height * 0.1,
            right: -30,
            child: Image.asset(
              'assets/images/pokeball.png',
              height: 200.0,
              color: Colors.white.withOpacity(0.26),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Bulbasaur",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 36.0),
                    ),
                    SizedBox(
                      height: 6.0,
                    ),
                    Row(
                      children: [
                        ItemTypeWidget(
                          text: "Grass",
                        ),
                        ItemTypeWidget(
                          text: "Poison",
                        ),
                      ],
                    )
                  ],
                ),
                Text(
                  "#001",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ),
          Column(
            children: [
              const Expanded(
                flex: 4,
                child: SizedBox(),
              ),
              Expanded(
                flex: 8,
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30.0),
                      topRight: Radius.circular(30.0),
                    ),
                  ),
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(22.0),
                        child: Column(
                          children: [
                            const Text(
                              "About Pokemon",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            ItemDataWidget(
                              title: "height",
                              data: "1.5 m",
                            ),
                            ItemDataWidget(
                              title: "Weith",
                              data: "6.9 m",
                            ),
                            ItemDataWidget(
                              title: "Candy",
                              data: "Bulbasaur Candy",
                            ),
                          ],
                        ),
                      ),
                      Positioned.fill(
                        top: -90,
                        child: Align(
                          alignment: Alignment.topCenter,
                          child: Image.network(
                              "http://www.serebii.net/pokemongo/pokemon/001.png"),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
