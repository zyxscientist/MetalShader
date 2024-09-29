//
//  Grid.swift
//  MetalShader
//
//  Created by admin on 2024/9/19.
//

import SwiftUI

struct ChecksView: View {
    var body: some View {
        Image(systemName: "figure.run.circle.fill")
            .font(.system(size: 300))
            .colorEffect(ShaderLibrary.checkerboard(.float(10), .color(.blue)))

    }
}

#Preview {
    ChecksView()
}
