//
//  dotbg.swift
//  MetalShader
//
//  Created by admin on 2024/9/29.
//

import SwiftUI

struct DotMatrixView: View {
    let size: CGFloat = 300
    let dotSpacing: CGFloat = 10 // 点之间的间距
    
    var body: some View {
        Canvas { context, canvasSize in
            for x in stride(from: dotSpacing/2, to: size, by: dotSpacing) {
                for y in stride(from: dotSpacing/2, to: size, by: dotSpacing) {
                    let rect = CGRect(x: x, y: y, width: 1, height: 1)
                    context.fill(Path(ellipseIn: rect), with: .color(.black))
                }
            }
        }
        .frame(width: size, height: size)
        .border(Color.gray, width: 1)
    }
}

struct ContentView: View {
    var body: some View {
        DotMatrixView()
    }
}
