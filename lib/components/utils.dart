bool checkCollision(player, block) {
  //final hitbox = player.hitbox;
  final playerX = player.position.x;
  final playerY = player.position.y ;
  final playerWidth = player.width;
  final playerHeight = player.height;

  final blockX = block.x;
  final blockY = block.y;
  final blockWidth = block.width;
  final blockHeight = block.height;

  // final fixedX = player.scale.x < 0
  //     ? playerX - (hitbox.offsetX * 2) - playerWidth
  //     : playerX;
  //final fixedY = block.isPlatform ? playerY + playerHeight : playerY;

  // excluir
  final fixedX = player.scale.x < 0 ? playerX- playerWidth : playerX;

  return (playerY < blockY + blockHeight &&
      playerY + playerHeight > blockY &&
      fixedX < blockX + blockWidth &&
      fixedX + playerWidth > blockX);
}
