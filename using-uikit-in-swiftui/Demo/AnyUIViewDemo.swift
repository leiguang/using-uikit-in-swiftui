//
//  AnyUIViewDemo.swift
//  using-uikit-in-swiftui
//
//  Created by Guang Lei on 2021/4/7.
//

import SwiftUI

struct AnyUIViewDemo: View {
    
    @State private var showingImagePicker: Bool = false
    
    var body: some View {
        Button("Show UISwitch") {
            showingImagePicker = true
        }
        .sheet(isPresented: $showingImagePicker) {
            AnyUIView<UISwitch>()
        }
    }
}

struct AnyUIViewDemo_Previews: PreviewProvider {
    static var previews: some View {
        AnyUIViewDemo()
    }
}
