# Learn flutter

**Awesome Tools:**
- Dhiwise:  A web tool for online development for flutter.
  - This will change flutter development forever | Dhiwise: [Click here](https://www.youtube.com/watch?v=DAl3dbTnAgw)

**Quick Links:**
- 💘 2.5 Flutter Projects: [Click here](https://flutterawesome.com/)
- flutter Cli tool Docs: [Click here](https://docs.flutter.dev/reference/flutter-cli)
- Learn Flutter Google Doc: [Click here](https://docs.google.com/document/d/1R_BumyUBGAscuIj8BuciBrf65HqF7tAFJZlZIOuw0MY/edit?usp=sharing)
- Flutter Development in browser: [Click here](https://flutlab.io/)
- Flutter Docs | Integration Testing: [Click here](https://docs.flutter.dev/testing/integration-tests)
- How to know if an app is made with Flutter?: [Click here](https://www.reddit.com/r/FlutterDev/comments/cmxqlx/how_to_know_if_an_app_is_made_with_flutter/)
- List of web apps built with Flutter: [Click here](https://www.reddit.com/r/FlutterDev/comments/voxj4x/list_of_web_apps_built_with_flutter/)
- STACK OVERFLOW Query: Does flutter web only support rendering everything in canvas?: [Click here](https://stackoverflow.com/questions/66836840/does-flutter-web-only-support-rendering-everything-in-canvas)

## TODO
- For google-code: Project `namer_app`: Continue video from: 1h 2m 40s: [Click here](https://codelabs.developers.google.com/codelabs/flutter-codelab-first#0)

## Creating project

```bash
flutter create hello_world
cd hello_world
flutter run

# Run below command to run app on a real device (you can get device ID via `adb devices` command)
flutter run -d DMYX75XGPFYLSSKV # Here `DMYX75XGPFYLSSKV` is device ID of my Poco Phone

# Use below command to run app on enulator
flutter run -d emulator-<emulator_number>
```

## Running project in debugger mode + amazing automatic hot reload

![image](https://github.com/sahilrajput03/learn-flutter/assets/31458531/d58c0598-293e-460b-b924-9449e1a10fa9)

## Reset the state

![image](https://github.com/sahilrajput03/learn-flutter/assets/31458531/227d82ba-95e1-48a8-86f9-7160562d403c)

## State Management libraries in flutter

![image](https://github.com/sahilrajput03/learn-flutter/assets/31458531/3d24745a-3a17-41c7-acbf-4f6b93be14e9)

## Everything is rendred inside the `<canvas>` element in flutter

- List of web apps built with Flutter: [Click here](https://www.reddit.com/r/FlutterDev/comments/voxj4x/list_of_web_apps_built_with_flutter/)
- Website: https://demo.invoiceninja.com/

![image](https://github.com/sahilrajput03/learn-flutter/assets/31458531/8d1b6370-67fe-4b69-80c4-922d4c73f616)

## Accessiblity

- Flutter Docs | Screen readers: [Click here](https://docs.flutter.dev/ui/accessibility-and-internationalization/accessibility#screen-readers)

1. tab switching works quite cool with a list of websited made with flutter
2. VoiceOver (apple official screen reader app) doesn't work great at all, check this issue: [Click here](https://github.com/flutter/flutter/issues/115158) (~found by Eric)

*As per testing from Eric, screen readers doesn't work when tested from the resource of reddit i.e, "List of web apps built with Flutter".*
