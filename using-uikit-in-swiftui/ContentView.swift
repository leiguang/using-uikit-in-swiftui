//
//  ContentView.swift
//  using-uikit-in-swiftui
//
//  Created by Guang Lei on 2021/4/6.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        NavigationView {
            List {
                NavigationLink(destination: ImagePickerDemo()) { Text("ImagePicker") }
                NavigationLink(destination: FontPickerDemo()) { Text("FontPicker") }
                NavigationLink(destination: SpinnerDemo()) { Text("Spinner") }
                NavigationLink(destination: AnyUIViewControllerDemo()) { Text("AnyUIViewController") }
                NavigationLink(destination: AnyUIViewDemo()) { Text("AnyUIView") }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
