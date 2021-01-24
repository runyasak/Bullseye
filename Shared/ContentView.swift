//
//  ContentView.swift
//  Shared
//
//  Created by Runyasak Chaengnaimuang on 24/1/2564 BE.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            VStack {
                Text("PUT THE BULLEYE AS CLOSE AS YOU CAN TO")
                    .multilineTextAlignment(.center)
                    .padding()
                Text("89")
            }
            Slider(value: .constant(50), in: 1.0...100.0)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
