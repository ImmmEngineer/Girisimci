//
//  ContentView.swift
//  SuperKahramanSwiftUI
//
//  Created by Muhammet Emin Ayhan on 21.10.2023.
//

import SwiftUI

struct ListeView: View {
    var body: some View {
        NavigationView{
            List(superKahramanlarDizisi){superKahraman in
                NavigationLink(destination: DetayView(secilenKahraman: superKahraman)) {
                    ListeRowView(superkahraman: superKahraman)
                }
            }.navigationTitle(Text("SuperKahraman Kitabı"))
        }
    }
}

#Preview {
    ListeView()
}
