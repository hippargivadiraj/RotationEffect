//
//  ContentView.swift
//  RotationEffect
//
//  Created by Vadiraj Hippargi on 5/2/21.
//

import SwiftUI

struct ContentView: View {
    @State private var angle: Double = 0

    var body: some View {
        VStack {
            Rectangle().frame(width: 100, height: 100)
                .rotationEffect(Angle(degrees: angle), anchor: UnitPoint(x: 0.5, y: 0.5))

            Slider(value: $angle, in: 0...360)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
