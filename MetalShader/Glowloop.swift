//
//  Glowloop.swift
//  MetalShader
//
//  Created by admin on 2024/9/19.
//

import SwiftUI

struct GlowloopView: View {
    @State var color: Color
       let startDate = Date()
       var body: some View {
           
           GeometryReader { geometry in

            TimelineView(.animation) { _ in
                       
               VStack
                   { color }
                   .colorEffect(ShaderLibrary.GlowLoopShader(
                       .float2(geometry.size),
                       .float(startDate.timeIntervalSinceNow)))
               }
           }
           .background(Color.black)
       }
   }

#Preview {
    GlowloopView(color: .indigo)
}
