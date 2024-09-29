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
                            .navigationTitle("Glowloop View")
                    } label: {
                        Text("Glowloop View")
                }
            }
            .navigationTitle("Shader Example")
        }
    }
}


#Preview {
    ContentView()
}
