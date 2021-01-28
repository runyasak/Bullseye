//
//  ContentView.swift
//  Shared
//
//  Created by Runyasak Chaengnaimuang on 24/1/2564 BE.
//

import SwiftUI

struct ContentView: View {

    @State private var alertIsVisible: Bool = false
    @State private var sliderValue: Double = 50.0
    @State private var game: Game = Game()
    
    var body: some View {
        VStack {
            VStack {
                Text("PUT THE BULLEYE AS CLOSE AS YOU CAN TO")
                    .bold()
                    .kerning(2.0)
                    .multilineTextAlignment(.center)
                    .lineSpacing(4.0)
                    .font(.footnote)
                Text(String(game.target))
                    .kerning(-1.0)
                    .font(.largeTitle)
                    .fontWeight(.black)
            }
            HStack {
                Text("1")
                    .bold()
                Slider(value: self.$sliderValue, in: 1.0...100.0)
                Text("100")
                    .bold()
            }
            Button(action: {
                print("Hello SwiftUI")
                self.alertIsVisible = true
            }) {
                Text("Hit me")
            }
            .alert(isPresented: $alertIsVisible, content: {
                return Alert(title: Text("Hello there"), message: Text("The slider's value is \(Int(self.sliderValue.rounded())).\n" + "Your scored \(self.game.points(sliderValue: Int(self.sliderValue.rounded()))) points this round."), dismissButton: .default(Text("Awesome !")))
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        ContentView().previewLayout(.fixed(width: 568, height: 320))
    }
}
