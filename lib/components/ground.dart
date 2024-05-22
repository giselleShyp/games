import 'package:flame/components.dart';
import 'package:flame_forge2d/flame_forge2d.dart';
import 'body_component_with_user_data.dart';

const groundSize = 10.0;

class GroundComponent extends BodyComponentWithUserData {
  GroundComponent(Vector2 position, Sprite sprite)
      : super(
          renderBody: false,
          bodyDef: BodyDef()
            ..position = position
            ..type = BodyType.static,
          fixtureDefs: [
            FixtureDef(
              PolygonShape()..setAsBoxXY(groundSize / 2, groundSize / 2),
              friction: 0.1,
            )
          ],
          children: [
            SpriteComponent(
              anchor: Anchor.center,
              sprite: sprite,
              size: Vector2.all(groundSize),
              position: Vector2(0, 0),
            ),
          ],
        );
}
