import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // to get size
    var size = MediaQuery.of(context).size;

    // style
    // var cardTextStyle = const TextStyle(
    //   fontFamily: 'Montserrat Regular',
    //   fontSize: 14,
    //   color: Color.fromRGBO(63, 63, 63, 1),
    // );

    var cardTextStyle = GoogleFonts.montserrat(
      fontSize: 14,
      color: Color.fromRGBO(63, 63, 63, 1),
      fontWeight: FontWeight.w600
    );

    return Scaffold(
      body: Stack(children: [
        Container(
          height: size.height * .3,
          decoration: const BoxDecoration(
            image: DecorationImage(
                alignment: Alignment.topCenter,
                image: AssetImage('assets/images/top_header.png')),
          ),
        ),
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Container(
                  height: 64,
                  margin: EdgeInsets.only(bottom: 20),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const CircleAvatar(
                        radius: 32,
                        backgroundImage: NetworkImage(
                            'https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1480&q=80'),
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "John Richardo",
                            style: TextStyle(
                                fontFamily: 'Montserrat Medium',
                                color: Colors.white),
                          ),
                          Text(
                            "410140141",
                            style: TextStyle(
                                fontSize: 14,
                                fontFamily: 'Montserrat Medium',
                                color: Colors.white),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: GridView.count(
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                    crossAxisCount: 2,
                    primary: false,
                    children: [
                      for (int x = 1; x <= 6; x++) ...[
                        Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)),
                          elevation: 4,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: SvgPicture.network(
                                  'https://cdn.jsdelivr.net/gh/devicons/devicon/icons/flutter/flutter-original.svg',
                                  height: 100,
                                ),
                              ),
                              Text(
                                "Personal Data",
                                style: cardTextStyle,
                              )
                            ],
                          ),
                        )
                      ]
                    ],
                  ),
                )
              ],
            ),
          ),
        )
      ]),
    );
  }
}
