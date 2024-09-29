//
//  dotbg.swift
//  MetalShader
//
//  Created by admin on 2024/9/29.
//

import SwiftUI

struct DotMatrixView: View {
    @State private var dotSpacing: CGFloat = 10 // 点之间的间距
    var body: some View {
        ZStack{
            GeometryReader { geometry in
                Canvas { context, size in
                    let columns = Int(size.width / dotSpacing)
                    let rows = Int(size.height / dotSpacing)
                    
                    for row in 0...rows {
                        for column in 0...columns {
                            let x = CGFloat(column) * dotSpacing
                            let y = CGFloat(row) * dotSpacing
                            let rect = CGRect(x: x, y: y, width: 1, height: 1)
                            context.fill(Path(ellipseIn: rect), with: .color(.black))
                        }
                    }
                }
            }
            .ignoresSafeArea()
            
            
            VStack {
                Spacer()
                Text("间距: \(dotSpacing, specifier: "%.0f")")
                Slider(value: $dotSpacing, in: 5...50, step: 1)
                    .padding()
                    .background(.ultraThinMaterial)
                    .cornerRadius(20)
                    .padding()
            }
        }
    }
}

#Preview {
    DotMatrixView()
}
