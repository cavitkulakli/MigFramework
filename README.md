# MigFramework

`MigFramework` is a SwiftUI library for presenting views for spesific project but you can find really usefull parts.

![](https://img.shields.io/badge/swift%20package%20manager-compatible-green)

### Features

* Available for iOS 13 and above, as a SPM package for SwiftUI

### Swift Package Manager

MigFramework supports SPM versions 5.1.0 (Xcode 11) and above. In Xcode, click `File` -> `Swift Packages` -> `Add Package Dependency`, enter `https://github.com/cavitkulakli/MigFramework`. Select the version you’d like to use.

You can also manually add the package to your Package.swift file:

```swift
.package(url: "https://github.com/cavitkulakli/MigFramework", from: "1.0.0")
```

And the dependency in your target:

```swift
.target(name: "ExampleApp", dependencies: ["MigFramework"]),
```

## Using the Library

### Project Integration

Import the module in your project:

```swift
import MigFramework
```

### Shimmering Effect

Adds a view for shimmering effect

Use this view to append a shimmering view from your existing views as your needed size.

- parameter height: The height of the view you want to add
- parameter leadingTrallingSize: Want to put from the leading and tralling using for tralling or small shimmering parts in your view. Recommended usage via UIScreen.main.bounds.width for compatibility every device.
- returns: The view component as shimmering view

# Notes: #
1. Parameters must be **CGFLOAT** type

# Example #
```
MigFramework.ShimmerView(height: 50, leadingTrallingSize: (UIScreen.main.bounds.width / 5))
ForEach(0...10,id: \.self){_ in
   MigFramework.ShimmerView(height: 40, leadingTrallingSize: 0)
}
```
