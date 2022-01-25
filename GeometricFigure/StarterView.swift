//
//  StarterView.swift
//  GeometricFigure
//
//  Created by Ярослав Бойко on 15.12.2021.
//

import SwiftUI

struct StarterView: View {
    var body: some View {
        TabView {
            AnimationView()
                .tabItem {
                    Image(systemName: "pencil.and.outline")
                    Text("Spin it")
                }
            
            MyAwardsView()
                .tabItem {
                    Image(systemName: "rosette")
                    Text("My Awards")
                }
        }
    }
}

struct StarterView_Previews: PreviewProvider {
    static var previews: some View {
        StarterView()
    }
}
