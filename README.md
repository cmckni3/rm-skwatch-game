# SpriteKit Rotating Triangle

Sample applications showing how to use SpriteKit on watchOS

- Objective-C
- RubyMotion

## Requirements

- [x] show a triangle on the screen using a PNG
- [x] rotate the triangle
- [x] tap on the screen to start/stop the rotation

## How to run

### Objective-C

- Open the project with XCode and press cmd+r

```sh
open objective-c/SKWatch.xcodeproj
```

### RubyMotion

- Pair a `Apple Watch Series 2 - 42mm` to a simulator

- Enter the project directory

```sh
cd rm/skwatch
```

- Install main app (iOS) dependencies

```sh
bundle
```

- Enter the watch app (watchOS) directory

```sh
cd sk_watch_game
```

- Install the watch app dependencies

```sh
bundle
```

- Go back to the main app directory

```sh
cd ..
```

#### Run the main app (iOS)

```sh
[bundle exec] rake
```

    May need to specify the iOS device id/name.

```sh
[bundle exec] rake device_name='iPhone 8'
```

### Run the watch app (watchOS)

```sh
[bundle exec] rake watch
```

    May need to specify the iOS device id/name that contains the previously paired
    Series 2 watch.

```sh
[bundle exec] rake watch device_name='iPhone 8'
```

## Notes

- The Objective-C version was created from the iOS SpriteKit template. In the same project, the watchOS SpriteKit template was added as a new target.
- The Objective-C version contains a shared `TriangleNode` class used by the iOS and watchOS apps
- The RubyMotion version contains a shared `TriangleNode` class used by the iOS and watchOS apps as well
- The RubyMotion version contains a shared `TriangleRotationScene`(`rm/skwatch/shared/scenes/triangle_rotation_scene.rb`) with the base code for adding the triangle PNG node and `SKAction`. A `toggleRotateAction` method also toggles the rotation SKAction of the `TriangleNode`.
- The RubyMotion version iOS app contains a `GameController` without the use of storyboards. A `GameController` instance is created and assigned as the `rootViewController` in the app delegate.
- The Objective-C and RubyMotion versions contain the same SpriteKit game scenes for both the iOS app and the watchOS app.