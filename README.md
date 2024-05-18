# flutter_template

This project was created by `flutter create PROJECT_NAME` command.

[Flutter](https://github.com/flutter/flutter) framework starter repository.

## Docs

- [Flutter](https://docs.flutter.dev)
- [Material Design 3](https://m3.material.io/)
- [Material Icons | Rounded](https://fonts.google.com/icons?icon.style=Rounded&icon.set=Material+Icons)

### Accessibility

I strongly recommend reading the [Styles of Material Design 3](https://m3.material.io/styles) website, very informative.

- [About Icons](https://m3.material.io/styles/icons/applying-icons)

### Project structure

This project is designed with _feature-first_ architecture.

> [!NOTE]
>
> To understand this architecture, the below articles are very imformative.
>
> - https://codewithandrea.com/articles/flutter-app-architecture-riverpod-introduction/
> - https://codewithandrea.com/articles/flutter-project-structure/
> - https://www.cinnamon.agency/blog/post/cinnamon_flutter_riverpod_template

## Development

First, you must install packages.

```bash
flutter pub get
```

Second, you must create the environment files and set the variables.

There are three environments `dev`, `stage` and `prod`.

I've prepared templates for each. Copy them and fill in the blank parts (means: `""`) with your values (e.g. api-key, token).

In the end, there should be three files in the following directory.

Directory: `(repo)/.env/`

Files:

- `dev.json`
- `prod.json`
- `stage.json`

### Before running the app

You must lunch the device, _iOS_ or _Android_.

### Running on iOS

Before running the app on iOS, you must grant execution permission to the script set in the [Pre-actions of Runner](https://developer.apple.com/documentation/xcode/customizing-the-build-schemes-for-a-project).

The file is located at `(repo)/ios/PreActions/extract_dart_defines.sh`.

> [!TIP]
>
> Execution permission can be granted using the following command:
>
> ```zsh
> chmod +x ios/PreActions/extract_dart_defines.sh
> ```

## Packages

1. [build_runner](#1-build_runner)
2. [freezed](#2-freezed)
3. [json_serializable](#3-json_serializable)
4. [retrofit](#4-retrofit)
5. [socket_io_client](#5-socket_io_client)
6. [flutter_hooks](#6-flutter_hooks)
7. [hooks_riverpod](#7-hooks_riverpod)
8. [permission_handler](#8-permission_handler)

### 1. [build_runner](https://pub.dev/packages/build_runner)

This package is required by other packages to generates code automatically.

You must run the below script before use these packages.

```bash
flutter pub run build_runner watch --delete-conflicting-outputs
```

> [!NOTE]
>
> Also, you have the choice to run the script below each time.
>
> ```bash
> flutter pub run build_runner build --delete-conflicting-outputs
> ```

### 2. [freezed](https://pub.dev/packages/freezed)

This package is needed to define the model.

> [!IMPORTANT]
>
> [`build_runner`](#1-build_runner) is required.

### 3. [json_serializable](https://pub.dev/packages/json_serializable)

In Dart, you need to define methods if you want to convert a JSON object (of `Map<String, dynamic>` type) to a model (defined by [freezed](#2-freezed)).

This package helps generate methods automatically.

> [!IMPORTANT]
>
> [`build_runner`](#1-build_runner) is required.

### 4. [retrofit](https://pub.dev/packages/retrofit)

According to the [Flutter documentation](https://docs.flutter.dev/cookbook/networking/fetch-data), the `http` package is recommended for fetching data from APIs.

However, since this method requires specifying a URL each time, there is a lot of duplication.

This package simplifies such cases.

> [!IMPORTANT]
>
> [`build_runner`](#1-build_runner) is required.

### 6. [flutter_hooks](https://pub.dev/packages/flutter_hooks)

For easier state management, refer to [7. hooks_riverpod](#7-hooks_riverpod) for more details.

### 7. [hooks_riverpod](https://pub.dev/packages/hooks_riverpod)

[Riverpod](https://riverpod.dev/docs/introduction/why_riverpod) is a state management package that automatically changes the rendering scope through caching and state handling, thereby optimizing performance.

Riverpod has 3 types of packages.

- [riverpod](https://pub.dev/packages/riverpod)
- [flutter_riverpod](https://pub.dev/packages/flutter_riverpod)
- [hooks_riverpod](https://pub.dev/packages/hooks_riverpod)

Riverpod is used for managing global state, while [Hooks](https://riverpod.dev/docs/concepts/about_hooks) is utilized for managing state within narrower scopes.

> [!TIP]
>
> See this article for more details: [Riverpod+Hooks の導入についてのメモ](https://zenn.dev/yudofu502/articles/3406c7dd8b4382)

Let's use the [code generator](https://riverpod.dev/docs/concepts/about_code_generation) to speed up our coding.

Article: [riverpod_generator を使ってプロバイダを簡潔な記法で生成する](https://zenn.dev/riscait/books/flutter-riverpod-practical-introduction/viewer/riverpod-generator)

> [!IMPORTANT]
>
> To use the code generator, [`build_runner`](#1-build_runner) is required.

### 8. [permission_handler](https://pub.dev/packages/permission_handler)

This package is used to check/request permission to access the device's features. (e.g. camera, location, notification, bluetooth, etc...)

---

🐷
