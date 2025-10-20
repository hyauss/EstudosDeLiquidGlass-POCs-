//
//  Home.swift
//  PocLiquidGlass
//
//  Created by Lucca Pivoto on 20/10/25.
//

import Foundation
import SwiftUI


struct Home: View{
    @State private var isExpanded: Bool = false
    @State private var indice: Int = 1
    @State private var animationAmount = 0.5
    @Namespace private var namespace
    
    var body: some View {
        ZStack{
            Image("Doguinho")
                .resizable()
                .scaledToFit()
            VStack{
                GlassEffectContainer(spacing: 60.0) {
                    HStack(spacing: 10.0) {
                        Image(systemName: "scribble.variable")
                            .frame(width: 80.0, height: 80.0)
                            .font(.system(size: 36))
                            .glassEffect()
                            .glassEffectID("pencil", in: namespace)
                        
                        
                        if isExpanded{
                            Button(){
                                print("Clicou \(indice) vezes")
                                indice += 1
                            } label:{
                                Image(systemName: "eraser.fill")
                                    .frame(width: 80.0, height: 80.0)
                                    .font(.system(size: 36))
                                    .glassEffect()
                                    .glassEffectID("eraser", in: namespace)
                            }
                        }
                    }
                    .padding(.bottom , 8)
                    
                    Button("Toggle") {
                        withAnimation{
                            isExpanded.toggle()
                        }
                    }
                    .padding()
                    .glassEffect()
                    .glassEffect(.regular.tint(.orange).interactive())
                    
                    Button("Toggle 2") {
                        withAnimation{
                            isExpanded.toggle()
                        }
                    }
                    .padding(.top , 8)
                    .buttonStyle(.glass)
                }
            }
        }
        
    }
}


#Preview {
    ContentView()
}
