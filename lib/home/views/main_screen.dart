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
          ],
        ),
      ),
    );
  }
}