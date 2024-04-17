import 'dart:async';

import 'package:flame/components.dart';
import 'package:game/pixel_adventude.dart';

enum PlayerState { idle, running, jumping }

class Player extends SpriteAnimationGroupComponent
    with HasGameRef<PixelAdventure> {
  String character;
  Player({position, required this.character}) :super(position: position);
  late final SpriteAnimation idleAnimation;
  late final SpriteAnimation runningAnimation;
  late final SpriteAnimation jumpingAnimation;
  final double stepTime = 0.05;

  @override
  FutureOr<void> onLoad() {
    _loadAllAnimations();
    return super.onLoad();
  }

  void _loadAllAnimations() {
    idleAnimation = _spriteAnimator('Idle', 11);
    runningAnimation = _spriteAnimator('Run', 12);
    jumpingAnimation = _spriteAnimator('Jump', 1);

    //List of all animations
    animations = {
      PlayerState.idle: idleAnimation,
      PlayerState.running: runningAnimation,
      PlayerState.jumping: jumpingAnimation,
    };
    // Set current animation
    current = PlayerState.idle;
  }

  SpriteAnimation _spriteAnimator(String state, int amount){
    return SpriteAnimation.fromFrameData(
      game.images.fromCache('Main Characters/$character/$state (32x32).png'),
      SpriteAnimationData.sequenced(
        amount: amount,
        stepTime: stepTime,
        textureSize: Vector2.all(32),
      ),
    );
  }
}
