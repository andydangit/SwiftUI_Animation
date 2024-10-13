//
//  ContentView.swift
//  Animation
//
//  Created by Andy Dang It on 10/11/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var enabled = false
    
    
    var body: some View {
                
            Button("Tap me") {
                enabled.toggle()
                }
            .frame(width: 200, height: 200)
            .background(enabled ? .blue : .red)
            .foregroundStyle(.white)
            .animation(.default, value: enabled)
            .clipShape(.rect(cornerRadius: enabled ? 60 : 0))
            .animation(.spring(duration: 1, bounce: 0.7), value: enabled)
            
            
}

   
        
        
    
    
//MARK: - End of View
}

#Preview {
    ContentView()
}
