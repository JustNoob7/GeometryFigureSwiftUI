//
//  MyAwardsView.swift
//  GeometricFigure
//
//  Created by Ярослав Бойко on 15.12.2021.
//

import SwiftUI

struct MyAwardsView: View {
    var body: some View {
        NavigationView {
            VStack {
                SymbolView()
                Spacer()
            }
            .navigationTitle("My Awards")
        }
    }
}

struct MyAwardsView_Previews: PreviewProvider {
    static var previews: some View {
        MyAwardsView()
    }
}
