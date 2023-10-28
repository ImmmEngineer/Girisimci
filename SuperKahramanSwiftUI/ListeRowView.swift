//
//  SwiftUIView.swift
//  SuperKahramanSwiftUI
//
//  Created by Muhammet Emin Ayhan on 23.10.2023.
//

import SwiftUI

struct ListeRowView: View {
    
    var superkahraman : SuperKahraman
    
    var body: some View {
        HStack{
            Image(superkahraman.görselIsmi)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 120, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: .leading)
                .clipShape(Circle())
            Spacer()
            VStack{
                Text(superkahraman.isim)
                    .font(.title)
                    .bold()
                Text(superkahraman.gercekIsim)
                    .font(.title)
                
            }
            Spacer()
        }
        
    }
}

#Preview {
    ListeRowView(superkahraman: batman)
}
