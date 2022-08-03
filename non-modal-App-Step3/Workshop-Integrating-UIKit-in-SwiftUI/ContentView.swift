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
            NonModalButton()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
