//
//  Spinner.swift
//  using-uikit-in-swiftui
//
//  Created by Guang Lei on 2021/4/7.
//

import SwiftUI

struct Spinner: UIViewRepresentable {

    let isAnimating: Bool
    let style: UIActivityIndicatorView.Style

    func makeUIView(context: Context) -> UIActivityIndicatorView {
        let spinner = UIActivityIndicatorView(style: style)
        spinner.hidesWhenStopped = true
        print(#function)    // 用于验证当UI刷新时，是否会多次创建新的View，结论：不会。
        return spinner
    }
    
    func updateUIView(_ uiView: UIActivityIndicatorView, context: Context) {
        isAnimating ? uiView.startAnimating() : uiView.stopAnimating()
    }
}
