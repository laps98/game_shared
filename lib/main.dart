import 'package:flame/flame.dart';
import 'package:flame/game.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:game/pixel_adventude.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Flame.device.fullScreen;
  Flame.device.setLandscape();

  PixelAdventure game = PixelAdventure();
  runApp(GameWidget(game: kReleaseMode ? PixelAdventure():game),
  );
}
