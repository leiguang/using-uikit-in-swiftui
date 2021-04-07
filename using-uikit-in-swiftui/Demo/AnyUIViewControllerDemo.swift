//
//  AnyUIViewControllerDemo.swift
//  using-uikit-in-swiftui
//
//  Created by Guang Lei on 2021/4/7.
//

import SwiftUI

struct AnyUIViewControllerDemo: View {
    
    @State private var showingImagePicker: Bool = false
    
    var body: some View {
        Button("Show UIImagePickerController") {
            showingImagePicker = true
        }
        .sheet(isPresented: $showingImagePicker) {
            AnyUIViewController<UIImagePickerController>()
        }
    }
}

struct AnyUIViewControllerDemo_Previews: PreviewProvider {
    static var previews: some View {
        AnyUIViewControllerDemo()
    }
}
