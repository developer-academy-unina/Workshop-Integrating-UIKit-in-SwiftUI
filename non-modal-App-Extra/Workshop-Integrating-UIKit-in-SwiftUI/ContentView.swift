//
//  ContentView.swift
//  Workshop-Integrating-UIKit-in-SwiftUI
//
//  Created by Giovanni Monaco on 23/02/22.
//

import SwiftUI

struct ContentView: View {
    @State var isPresenting: Bool = false
    var body: some View {
        ZStack {
            Group {
                isPresenting ? Color.yellow : Color.pink
            }
            .ignoresSafeArea(.all)
            VStack {
                Spacer()
                NonModalButton(isPresenting: $isPresenting)
                    .frame(width: 100, height: 100, alignment: .center)
                    .rotationEffect(isPresenting ? Angle(degrees: 180) : Angle(degrees: 0.0))
                Spacer()
                if isPresenting {
                    Spacer()
                    Spacer()
                }
            }
        }
        .animation(.easeInOut, value: isPresenting)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
