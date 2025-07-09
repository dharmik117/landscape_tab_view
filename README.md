# landscape_tab_view

A Flutter package that makes it easy to build responsive, split-view tablet UIs that adapt
automatically to landscape orientation — inspired by apps like Flipkart, Zomato, and other
large-scale applications.


---

## ✨ Features

- Automatically switches to landscape layout on tablets (width ≥ 600).
- Provides a master-detail layout with a customizable width.
- Built-in navigation arrows to adjust content alignment (start, center, end).
- Minimal setup — just wrap your `runApp()` with `LandscapeTabView`.

## Screenshot

Here’s how its look
<img src="https://raw.githubusercontent.com/dharmik117/landscape_tab_view/master/screenshots/example1.png"/>

## 🚀 Usage

- Just wrap your `runApp()` inside `LandscapeTabView`

**main.dart**

```dart
void main() {
  runApp(
    LandscapeTabView(child: const MyApp()),
  );
}
```

## 🛠️ Getting Started

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  landscape_tab_view: ^0.0.3
