//
//  ContentView.swift
//  Shared
//
//  Created by Rohith K on 11/21/22.
//

import SwiftUI

struct CustomLabelStyle: LabelStyle {
    func makeBody(configuration: Configuration) -> some View {
        Label(configuration)
            .font(.system(size: 32.0))
    }
}

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(.blue).opacity(0.1).edgesIgnoringSafeArea(.horizontal)
                
                
                VStack(spacing: 10) {
                    
                    Label("Game Standings", systemImage: "play.fill")
                        .labelStyle(CustomLabelStyle())
                        .foregroundColor(Color.red)
                        .font(Font.system(Font.TextStyle.body))
                        
                    Spacer()
                    Text("Sign in with Facebook")
                        .fontWeight(.light)
                        .font(.title)
                    Text("Sign in with Google")
                        .fontWeight(.light)
                        .font(.title)
                    Spacer()
                }
                .foregroundColor(Color.black.opacity(0.7))
                }
    }
        
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
