//
//  MeshAnimate.swift
//  MetalShader
//
//  Created by admin on 2024/9/29.
//

import SwiftUI

struct MeshAnimate: View {
    @State var t: Float = 0.0
    @State var timer: Timer?
    
    var body: some View {
        ZStack{
            MeshGradient(
                width: 3,
                height: 3,
                points: [
                    [0.0, 0.0],
                    [0.5, 0.0],
                    [1.0, 0.0],
                    
                    [sinInRange(-0.8...(-0.2), 0.439, 0.342, t), sinInRange(0.3...0.7, 3.42, 0.984, t)],
                    [sinInRange(0.1...0.8,     0.239, 0.084, t), sinInRange(0.2...0.8, 5.21, 0.242, t)],
                    [sinInRange(1.0...1.5,     0.939, 0.084, t), sinInRange(0.4...0.8, 0.25, 0.642, t)],
                    
                    [sinInRange(-0.8...0.0,    1.439, 0.442, t), sinInRange(1.4...1.9, 3.42, 0.984, t)],
                    [sinInRange(0.3...0.6,     0.339, 0.784, t), sinInRange(1.0...1.2, 1.22, 0.772, t)],
                    [sinInRange(1.0...1.5,     0.939, 0.056, t), sinInRange(1.3...1.7, 0.47, 0.342, t)],
                    
                ],
                colors: [
                    .black, .black, .black,
                    .indigo, .blue, .red,
                    .orange, .black, .green
                ],
                background: .black)
                .ignoresSafeArea()
        }
        .onAppear {
            timer = Timer.scheduledTimer(withTimeInterval: 0.01, repeats: true, block: { _ in
                t += 0.02
            })
        }
    }
}

// 这个函数的作用是生成一个在指定范围内波动的正弦值,可以用于创建平滑的周期性动画或效果
func sinInRange (_ range: ClosedRange<Float>, _ offset: Float, _ timeScale: Float, _ t: Float ) -> Float{
    let amplitude = (range.upperBound - range.lowerBound) / 2
    let minPoint =  (range.upperBound + range.lowerBound) / 2
    return minPoint + amplitude * sin(timeScale * t + offset)
}

#Preview {
    MeshAnimate()
}
