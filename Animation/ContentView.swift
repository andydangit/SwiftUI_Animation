//
//  ContentView.swift
//  Animation
//
//  Created by Andy Dang It on 10/11/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var animationAmount = 0.0
    
    
    var body: some View {
//        print(animationAmount)
//        
//        return VStack {
//            Stepper("Scale amount", value: $animationAmount.animation(
//                .easeInOut(duration: 1)
//                .repeatCount(3, autoreverses: true)
//            ), in: 1...10)
//            Spacer()
            
        
            Button("Tap me") {
                withAnimation(.spring(duration: 1, bounce: 0.5)){
                    animationAmount += 360
                }
            }
            .padding(40)
            .background(Color.red)
            .foregroundStyle(.white)
            .clipShape(.circle)
            .rotation3DEffect(.degrees(animationAmount), axis: (x: 0, y: 1, z: 0))
   
        }
        
    
    
//MARK: - End of View
}

#Preview {
    ContentView()
}
