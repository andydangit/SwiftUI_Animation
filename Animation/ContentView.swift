//
//  ContentView.swift
//  Animation
//
//  Created by Andy Dang It on 10/11/24.
//

import SwiftUI

struct ContentView: View {
    @State private var isShowingRed = false
    
    
    var body: some View {
        
        VStack {
            Button("Tap me") {
                withAnimation {
                    isShowingRed.toggle()
                }
            }
            if isShowingRed {
                Rectangle()
                    .fill(.red)
                    .frame(width: 200, height: 200)
                    .transition(.scale)
            }
        }
        
        
    }
    
    
    
    
    
    
    
    
    //MARK: - End of View
}

#Preview {
    ContentView()
}
