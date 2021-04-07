//
//  AnyUIView.swift
//  using-uikit-in-swiftui
//
//  Created by Guang Lei on 2021/4/7.
//

import SwiftUI

struct AnyUIView<T: UIView>: UIViewRepresentable {
    
    typealias UIViewType = T

    func makeUIView(context: Context) -> UIViewType {
        T.init()
    }
    func updateUIView(_ uiView: UIViewType, context: Context) {
        
    }
}
