import 'dart:async';

import 'package:flame/components.dart';
import 'package:game/pixel_adventude.dart';

class BackgroundTile extends SpriteComponent with HasGameRef<PixelAdventure> {
  final String color;

  BackgroundTile({
    this.color = 'Grey',
    position,
  }) : super(position: position);

  @override
  FutureOr<void> onLoad() {
    size = Vector2.all(64);
    sprite = Sprite(game.images.fromCache('Background/$color'));
    return super.onLoad();
  }
}
