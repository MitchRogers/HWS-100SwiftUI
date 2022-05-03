//
//  ContentView.swift
//  LargeBlueViewModifier
//
//  Created by Mitch Rogers on 5/3/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Circle()
                .circleBackground()
                .padding()
            
            VStack {
                Text("Hello, world!")
                    .title()
                Text("by mitch rogers")
                    .author()
            }
        }
    }
}

struct LargeBlueModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundColor(.blue)
    }
}

struct AuthorModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.subheadline)
            .foregroundColor(.red)
    }
}

struct CircleModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            Circle()
                .fill(Color.white.opacity(0.8))
                .padding(3)
    }
}

extension View {
    func title() -> some View {
        modifier(LargeBlueModifier())
    }
    
    func author() -> some View {
        modifier(AuthorModifier())
    }
    
    func circleBackground() -> some View {
        modifier(CircleModifier())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
