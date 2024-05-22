import 'package:flame/game.dart';
import 'package:flutter/material.dart';

import 'components/game.dart'; // Add this import

void main() {
  runApp(
    const GameWidget.controlled(
      gameFactory: MyPhysicsGame.new, // Modify this line
    ),
  );
}
