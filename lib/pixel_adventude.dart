import 'dart:async';

import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'package:game/levels/level.dart';

class PixelAdventure extends FlameGame{

  late final CameraComponent cam;

  @override
  final world = Level();

@override
  FutureOr<void> onLoad() {

  cam = CameraComponent.withFixedResolution(width: 640, height: 360, world: world);

  cam.viewfinder.anchor = Anchor.topLeft;

  addAll([cam, world]);
    return super.onLoad();
  }
}