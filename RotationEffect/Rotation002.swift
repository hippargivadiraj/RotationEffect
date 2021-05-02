//
//  Rotation002.swift
//  RotationEffect
//
//  Created by Vadiraj Hippargi on 5/2/21.
//

import SwiftUI

struct Rotation002: View {
    @State private var angle: Double = 0

    var body: some View {
        ZStack {
            ForEach(0 ..< 20) { item in
                Rectangle().frame(width: 100, height: 100)
                    .foregroundColor(Color( red: Double.random(in: 1..<250)/255, green: Double.random(in: 1..<250)/255, blue: Double.random(in: 1..<250)/255, opacity:0.7))

                    .rotationEffect(Angle(degrees: Double.random(in: 0...360)), anchor: UnitPoint(x: 2, y: -2))
                    .offset(x: CGFloat(Int.random(in: -20..<100)), y: CGFloat(Int.random(in: -20..<100)))
                    
            }

           
        }.frame(width: 100, height: 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
    }
}

struct Rotation002_Previews: PreviewProvider {
    static var previews: some View {
        Rotation002()
    }
}
