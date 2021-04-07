## [using-uikit-in-swiftui](https://github.com/leiguang/using-uikit-in-swiftui)

Using UIView and UIViewController in SwiftUI。


#### 在SwiftUI中使用 UIViewController/UIView 时，需遵守 UIViewControllerRepresentable/UIViewRepresentable 协议，虽然是用结构体声明/创建的View，但当UI刷新时，不会多次创建新的UIViewController/UIView 实例。



## 工程中的Demo对应到UIKit中的视图：

- ImagePicker -> UIImagePickerController。

- FontPicker -> UIFontPickerViewController。

- Spinner -> UIActivityIndicatorView。


Demo来自以下文章：

## ImagePickerDemo

1.[Wrapping a UIViewController in a SwiftUI view](https://www.hackingwithswift.com/books/ios-swiftui/wrapping-a-uiviewcontroller-in-a-swiftui-view)

2.[Using coordinators to manage SwiftUI view controllers](https://www.hackingwithswift.com/books/ios-swiftui/using-coordinators-to-manage-swiftui-view-controllers)



## FontPickerDemo & SpinnerDemo

1. [Using UIView and UIViewController in SwiftUI](https://www.vadimbulavin.com/using-uikit-uiviewcontroller-and-uiview-in-swiftui/)



## AnyUIViewController & AnyUIView

自己写的 UIViewController 和 UIView 的简单包装器，创建时传入类型，可以快速创建相应的SwiftUI视图。这里的简易实现，不包括任何SwiftUI和UIKit的交互，如果要适配事件处理，我觉得直接用苹果提供的 UIViewControllerRepresentable 和 UIViewRepresentable 协议，单独处理每个场景比较好，毕竟它已经足够简洁了，而且自己再封装一套未必更简洁好用。我并不建议使用 AnyUIViewController和AnyUIView，这里只是尝试一种实现方式，认为有需求时单独处理每个UIKit对象比较好，更显式直观，毕竟桥接UIKit的场景也是少数。
