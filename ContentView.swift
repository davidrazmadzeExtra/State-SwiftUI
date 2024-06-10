//
//  ContentView.swift
//  StateExample
//
//  Created by David Razmadze on 6/9/24.
//

import SwiftUI

struct ContentView: View {
  
  // variable - counter

  @State private var score = 0
  
  var body: some View {
    VStack {
      
      Text("Score: \(score)")
        .font(.largeTitle)
        .padding()
      
      Button(action: {
        updateScore()
      }, label: {
        Text("Increase score!")
          .padding()
          .background(Color.green)
          .foregroundColor(.white)
          .cornerRadius(10)
      })
    }
    .padding()
  }
  
  private func updateScore() {
    score += Int.random(in: 1...10)
  }
  
}

#Preview {
  ContentView()
}
