//
//  DetayView.swift
//  SuperKahramanSwiftUI
//
//  Created by Muhammet Emin Ayhan on 23.10.2023.
//

import SwiftUI

struct DetayView: View {
    
    var secilenKahraman : SuperKahraman
    var body: some View {
        
        VStack{
            MapView(coordinate: secilenKahraman.koordinatLokasyonu)
                .frame(height: UIScreen.main.bounds.height * 0.3)
                .edgesIgnoringSafeArea(.top)
            GorselView(image: Image(secilenKahraman.görselIsmi))
                .frame(width: UIScreen.main.bounds.width * 0.9, height: UIScreen.main.bounds.height * 0.3, alignment: .center)
                .offset(y: UIScreen.main.bounds.height * -0.30)
                .padding(.bottom,UIScreen.main.bounds.height * -0.01)
            VStack{
                HStack{
                    Text(secilenKahraman.isim)
                        .font(.largeTitle)
                        .foregroundColor(.blue)
                    
                    Spacer()
                    Text(secilenKahraman.gercekIsim)
                        .font(.largeTitle)
                        .foregroundColor(.orange)
                        
                }.padding(.top)
                HStack{
                    Text(secilenKahraman.meslek)
                        .bold()
                    Spacer()
                    Text(secilenKahraman.sehir)
                        .bold()
                }
                
            }
            .padding()
            .offset(y: UIScreen.main.bounds.height * -0.29)
            Spacer()
        }
        
    }
}

#Preview {
    DetayView(secilenKahraman: spiderman)
}
