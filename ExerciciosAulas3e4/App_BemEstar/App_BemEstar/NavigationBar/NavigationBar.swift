//
//  NavigationBar.swift
//  App_BemEstar
//
//  Created by user288577 on 11/29/25.
//

import SwiftUI

struct NavigationBar: View {
    var body: some View {
        HStack{
            Button("Taibe Cruz"){}
                .font(.headline)
                .fontWeight(.bold)
            
            Button(action: {}){
                Image(systemName: "person.badge.plus.fill")
            }
        }
    }
}

#Preview {
    NavigationBar()
}
