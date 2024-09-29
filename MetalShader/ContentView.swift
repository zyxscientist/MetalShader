//
//  ContentView.swift
//  MetalShader
//
//  Created by admin on 2024/9/19.
//


import SwiftUI

struct ContentView: View {
    
    var body: some View {
        NavigationStack{
            List {
                
                NavigationLink {
                    ChecksView()
                        .navigationTitle("Check View")
                } label: {
                    Text("Check View")
                }
                
                NavigationLink {
                    GlowloopView(color: .indigo)
                    } label: {
                        Text("Glowloop View")
                }
                
                NavigationLink {
                    MeshAnimate()
                    } label: {
                        Text("Mesh Animate")
                }
                
                NavigationLink {
                    DotMatrixView()
                    } label: {
                        Text("Dot Matrix")
                }
            }
            .navigationTitle("Shader Example")
        }
    }
}


#Preview {
    ContentView()
}
