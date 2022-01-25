//
//  SymbolShapeView.swift
//  GeometricFigure
//
//  Created by Ярослав Бойко on 15.12.2021.
//

import SwiftUI

struct SymbolShapeView: View {
    
    let scaleValue: Double
    let angleValue: Double
    
    var body: some View {
        
        GeometryReader { geometry in
            let width = geometry.size.width
            let height = geometry.size.height
            
            let size = min(width, height)
            
            let nearLine = size * 0.1
            let farLine = size * 0.9
            let middle = size * 0.5
            
            Path { path in
                path.move(to: CGPoint(x: middle, y: nearLine))
                path.addLine(to: CGPoint(x: farLine, y: middle))
                path.addLine(to: CGPoint(x: middle, y: farLine))
                path.addLine(to: CGPoint(x: nearLine, y: middle))
            }
            .fill(Color.green)
            .opacity(0.4)
            .scaleEffect(scaleValue)
            .rotationEffect(Angle(degrees: angleValue))

            Path { path in
                path.move(to: CGPoint(x: middle, y: nearLine))
                path.addQuadCurve(
                    to: CGPoint(x: farLine, y: middle),
                    control: CGPoint(x: nearLine, y: farLine)
                )
                path.addQuadCurve(
                    to: CGPoint(x: middle, y: farLine),
                    control: CGPoint(x: nearLine, y: nearLine)
                )
                path.addQuadCurve(
                    to: CGPoint(x: nearLine, y: middle),
                    control: CGPoint(x: farLine, y: nearLine)
                )
                path.addQuadCurve(
                    to: CGPoint(x: middle, y: nearLine),
                    control: CGPoint(x: farLine, y: farLine)
                )
            }
            .fill(
                RadialGradient(colors: [.blue.opacity(0.1), .purple.opacity(0.43)],
                               center: .center,
                               startRadius: width * 0.05,
                               endRadius: width * 0.25
                              )
            )
            .scaleEffect(scaleValue)
            .rotationEffect(Angle(degrees: angleValue))
            
        }
    }
    
    init(scaleValue: Double = 1.0, angleValue: Double = 0.0) {
        self.scaleValue = scaleValue
        self.angleValue = angleValue
    }
}

struct SymbolShapeView_Previews: PreviewProvider {
    static var previews: some View {
        SymbolShapeView()
            .frame(width: 300, height: 300)
    }
}
