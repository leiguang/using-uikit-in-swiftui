## [using-uikit-in-swiftui](https://github.com/leiguang/using-uikit-in-swiftui)

Using UIView and UIViewController in SwiftUI。



#### 工程中的Demo对应到UIKit中的视图：

- ImagePicker -> UIImagePickerController。

- FontPicker -> UIFontPickerViewController。

- Spinner -> UIActivityIndicatorView。



**注：**使用 UIViewControllerRepresentable / UIViewRepresentable 包装UIKit中的 UIViewController 和 UIView，虽然是用结构体声明的View，变量也可以用let修改，但当UI刷新时，不会多次创建新的View。



Demo来自以下文章：

##### ImagePickerDemo

1.[Wrapping a UIViewController in a SwiftUI view](https://www.hackingwithswift.com/books/ios-swiftui/wrapping-a-uiviewcontroller-in-a-swiftui-view)

2.[Using coordinators to manage SwiftUI view controllers](https://www.hackingwithswift.com/books/ios-swiftui/using-coordinators-to-manage-swiftui-view-controllers)



##### FontPickerDemo & SpinnerDemo

1. [Using UIView and UIViewController in SwiftUI](https://www.vadimbulavin.com/using-uikit-uiviewcontroller-and-uiview-in-swiftui/)

