//
//  ContentView.swift
//  App_BemEstar
//
//  Created by user288577 on 11/29/25.
//

import SwiftUI

struct ContentView: View {
    @StateObject var userManager = UserManager()

    var body: some View {
        VStack {
            NavigationBar(userManager: userManager)
            
            ScrollView(.vertical,
                       showsIndicators: false)
            {
                VStack {
                    Features_Grid()
                    CarouselTabView()
                    GoalContainer()
                }
            }
        }        
    }
}

#Preview {
    ContentView()
}
