//
//  ContentView.swift
//  Animation
//
//  Created by Andy Dang It on 10/11/24.
//

import SwiftUI
   
    struct CornerRotateModifier: ViewModifier {
        let amount: Double
        let anchor: UnitPoint

        func body(content: Content) -> some View {
            content
                .rotationEffect(.degrees(amount), anchor: anchor)
                .clipped()
        }
    }
    
    extension AnyTransition {
        static var pivot: AnyTransition {
            .modifier(
                active: CornerRotateModifier(amount: -90, anchor: .topLeading),
                identity: CornerRotateModifier(amount: 0, anchor: .topLeading)
            )
        }
    }
    

struct ContentView: View {
    @State private var isShowingRed: Bool = false
    var body: some View {
        ZStack {
            Rectangle()
                .fill(.blue)
                .frame(width: 200, height: 200)
            
            if isShowingRed {
                Rectangle()
                    .fill(.red)
                    .frame(width: 200, height: 200)
                    .transition(.pivot)
            }
        }
        .onTapGesture {
            withAnimation {
                isShowingRed.toggle()
            }
        }
        
        
    }
    
    
    
    
    
    
    
    
    //MARK: - End of View
}

#Preview {
    ContentView()
}
