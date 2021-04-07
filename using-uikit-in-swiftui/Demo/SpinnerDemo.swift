//
//  SpinnerDemo.swift
//  using-uikit-in-swiftui
//
//  Created by Guang Lei on 2021/4/7.
//

import SwiftUI

struct SpinnerDemo: View {
    
    @State private var isAnimating = false
    
    var body: some View {
        VStack(spacing: 30) {
            Spinner(isAnimating: isAnimating, style: .large)
            Toggle("toggle", isOn: $isAnimating).labelsHidden()
        }
    }
}

struct SpinnerDemo_Previews: PreviewProvider {
    static var previews: some View {
        SpinnerDemo()
    }
}
