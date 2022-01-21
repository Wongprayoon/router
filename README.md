<!-- 
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages). 

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages). 
-->

# Router

Flutter package to simplify route creation. By providing multiple transition options.

## Features

TODO: List what your package can do. Maybe include images, gifs, or videos.

## Getting started

TODO: List prerequisites and provide or point to information on how to
start using the package.

## Usage

Add package

```yaml
dependencies:
  router:
    git:
      url: git://github.com/wongprayoon/router.git
      ref: main
```

Example

```dart
MaterialApp(
  initialRoute: '/',
  onGenerateRoute: RoutHelper(routes: {
      '/': (args) => TransitionBuilderRoute.none(widget: NonePage()),
      '/slideRight': (args) => TransitionBuilderRoute.slideRight(widget: SlideRightPage()),
      '/slideLeft': (args) => TransitionBuilderRoute.slideRight(widget: SlideLeftPage()),
      '/slideUp': (args) => TransitionBuilderRoute.slideRight(widget: SlideUpPage()),
      '/slideDown': (args) => TransitionBuilderRoute.slideRight(widget: SlideDownPage()),
      '/scale': (args) => TransitionBuilderRoute.slideRight(widget: ScalePage()),
      '/size': (args) => TransitionBuilderRoute.slideRight(widget: SizePage()),
      '/fade': (args) => TransitionBuilderRoute.slideRight(widget: FadePage()),
    },
  ).onGenerateRoute,
);
```

## Additional information

TODO: Tell users more about the package: where to find more information, how to 
contribute to the package, how to file issues, what response they can expect 
from the package authors, and more.
