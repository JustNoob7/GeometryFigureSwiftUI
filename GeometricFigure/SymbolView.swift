//
//  SymbolView.swift
//  GeometricFigure
//
//  Created by Ярослав Бойко on 15.12.2021.
//

import SwiftUI

struct SymbolView: View {
    var body: some View {
        ZStack {
            SymbolShapeView()
                .frame(width: 300, height: 300)
            SymbolShapeView(scaleValue: 0.5, angleValue: 45.0)
                .frame(width: 300, height: 300)
            SymbolShapeView(scaleValue: 0.25)
                .frame(width: 300, height: 300)
            SymbolShapeView(scaleValue: 0.125, angleValue: 45.0)
                .frame(width: 300, height: 300)
        }
    }
}

struct SymbolView_Previews: PreviewProvider {
    static var previews: some View {
        SymbolView()
    }
}
