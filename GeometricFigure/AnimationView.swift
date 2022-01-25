//
//  AnimationView.swift
//  GeometricFigure
//
//  Created by Ярослав Бойко on 15.12.2021.
//

import SwiftUI

struct AnimationView: View {
    
    @State private var showAward = false
    
    var body: some View {
        VStack {
            Button(action: { buttonAction() }) {
                Text(showAward ? "Hide Award" : "ShowAward")
                
                Spacer()
                
                Image(systemName: "chevron.up.square")
                    .scaleEffect(showAward ? 2 : 1)
                    .rotationEffect(.degrees(showAward ? 0 : -180))
            }
            
            Spacer()
            
            if showAward {
                SymbolView()
                    .transition(.slide)
            }
            Spacer()
        }
        .font(.headline)
        .padding()
    }
    
    private func buttonAction() {
        withAnimation {
            showAward.toggle()
        }
    }
}

extension AnyTransition {
    
    static var transition: AnyTransition {
    let insertion = AnyTransition.move(edge: .leading)
        .combined(with: .scale)
    let removal = AnyTransition.scale
        .combined(with: opacity)
        
        return .asymmetric(insertion: insertion, removal: removal)
    }
}

struct AnimationView_Previews: PreviewProvider {
    static var previews: some View {
        AnimationView()
    }
}
