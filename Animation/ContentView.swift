//
//  ContentView.swift
//  Animation
//
//  Created by Andy Dang It on 10/11/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var animationAmount = 1.0
    
    
    var body: some View {
        Button("Tap Me"){
            animationAmount += 1
        }
        .padding(50)
        .background(.red)
        .foregroundStyle(.white)
        .clipShape(.circle)
        .scaleEffect(animationAmount)
//        .blur(radius: (animationAmount - 1 ) * 3 )
        .animation(
            .easeInOut(duration: 2)
                .delay(1),
            value: animationAmount)
        
    }
    
    
//MARK: - End of View
}

#Preview {
    ContentView()
}
