//
//  FontPickerDemo.swift
//  using-uikit-in-swiftui
//
//  Created by Guang Lei on 2021/4/6.
//

import SwiftUI

struct FontPickerDemo: View {
    
    @State private var isPresented = false
    @State private var font: UIFontDescriptor?
    
    var body: some View {
        VStack(spacing: 30) {
            Text(font?.postscriptName ?? "")
                .font(.custom((font?.fontAttributes[.family] as? String) ?? "", size: 20))
            Button("Pick a font") {
                isPresented = true
            }.sheet(isPresented: $isPresented) {
                FontPicker(font: $font)
            }
        }
    }
}

struct FontPickerDemo_Previews: PreviewProvider {
    static var previews: some View {
        FontPickerDemo()
    }
}
