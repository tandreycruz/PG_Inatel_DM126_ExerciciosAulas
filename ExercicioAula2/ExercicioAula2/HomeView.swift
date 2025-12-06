//
//  HomeView.swift
//  ExercicioAula2
//
//  Created by user288577 on 12/6/25.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack {
            Text("Bem-vindo!")
                .font(.largeTitle)
                .padding()
                    
            Image(systemName: "hand.wave.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 150)
                .foregroundColor(.green)
        }
    }
}

#Preview {
    HomeView()
}
