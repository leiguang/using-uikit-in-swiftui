//
//  AnyUIViewController.swift
//  using-uikit-in-swiftui
//
//  Created by Guang Lei on 2021/4/7.
//

import SwiftUI

struct AnyUIViewController<T: UIViewController>: UIViewControllerRepresentable {
    
    typealias UIViewControllerType = T

    func makeUIViewController(context: Context) -> UIViewControllerType {
        T.init()
    }
    
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
        
    }
}
