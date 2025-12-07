//
//  ContentView.swift
//  App_BemEstar
//
//  Created by user288577 on 11/29/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            NavigationBar()
            Features_Grid()
            CarouselTabView()
            GoalContainer()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
