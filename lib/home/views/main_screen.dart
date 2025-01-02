import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
/// Builds the main screen of the application, displaying a welcome message and user information.
/// The screen includes a circular avatar, the user's name, and a settings button.
/// The layout is structured using a [Row] and [Column] to align the elements.
    Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0,  vertical: 10),
        child: Column(
          children: [
            Row(
              children: [
                /// Displays a circular avatar with a person icon in the center.
                /// The avatar has a yellow background color.
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.yellow[700],
                      ),
                    ),
                    Icon(
                      CupertinoIcons.person_fill,
                      // color: Theme.of(context).colorScheme.outline,
                      color: Colors.yellow[900],
                    )
                  ],
                ),
                const SizedBox(width: 8,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Welcome back!",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: Theme.of(context).colorScheme.outline,
                      ),
                    ),
                    Text(
                      "John Doe",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).colorScheme.onSurface,
                      ),
                    ),
                  ],
                ),
                /// Adds a spacer and a settings button to the row layout.
                /// The spacer pushes the settings button to the right side of the row.
                /// The settings button is an [IconButton] that calls an empty `onPressed` callback when tapped.
                const Spacer(),
                IconButton(onPressed: () {}, icon: Icon(CupertinoIcons.settings)
                )
               
              ],
            ),
            /// A container with a height of half the screen width and a width of the full screen width.
            /// The container has a yellow background color and rounded corners.
            const SizedBox(height: 10,),
            Container(
              height: MediaQuery.of(context).size.width / 2,
              width: MediaQuery.of(context).size.width,
              // height: 200,
              // width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                colors: [
                  Theme.of(context).colorScheme.primary,
                  Theme.of(context).colorScheme.secondary,
                  Theme.of(context).colorScheme.tertiary,
            ],
              transform: const GradientRotation(pi / 4),
            ),

                borderRadius: BorderRadius.circular(25),
                 // Add some elevation to the container
                 boxShadow: [
                  BoxShadow(
                    blurRadius: 5,
                    color: Colors.grey.shade300,
                    offset: const Offset(5, 5),
                  ),
                 ]
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Total Balance",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                    ),
                    // const SizedBox(height: 10,),
                  Text("\$ 3,000,000.00",
                   style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      ),
                  ),
                  // TODO convert to a widget
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:[
                        // Income row
                        Row(
                          children: [
                            Container(
                              height: 25,
                              width: 25,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white30,
                              ),
                              child: Center(
                                child: 
                                Icon(
                                CupertinoIcons.arrow_down,
                                color: Colors.greenAccent,
                                size: 15,
                                )
                              )
                            ),
                            const SizedBox(width: 10,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children:[
                              Text(
                                "Income",
                                style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                                ),
                                ),
                              Text(
                                "\$ 2,599.00",
                                style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                                ),
                              ),
                              ]
                            )
                            // Icon(CupertinoIcons.arrow_up_circle_fill),
                            // Text("Income"),
                            // Text("\$ 2,599.00"),
                          ]
                        ),
                        // Expenses row
                        Row(
                          children: [
                            Container(
                              height: 25,
                              width: 25,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white30,
                              ),
                              child: Center(
                                child: 
                                Icon(
                                CupertinoIcons.arrow_down,
                                color: Colors.redAccent,
                                size: 15,
                                )
                              )
                            ),
                            const SizedBox(width: 10,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children:[
                              Text(
                                "Expenses",
                                style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                                ),
                                ),
                              Text(
                                "\$ 599.00",
                                style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                                ),
                              ),
                              ]
                            )
                            // Icon(CupertinoIcons.arrow_up_circle_fill),
                            // Text("Income"),
                            // Text("\$ 2,599.00"),
                          ]
                        )
                      ]
                    ),
                  )
                ],
              )
            )
          ],
        ),
      ),
    );
  }
}