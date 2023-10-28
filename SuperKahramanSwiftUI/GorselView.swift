//
//  GorselView.swift
//  SuperKahramanSwiftUI
//
//  Created by Muhammet Emin Ayhan on 23.10.2023.
//

import SwiftUI

struct GorselView: View {
    var image : Image
    var body: some View {
        image
            .resizable()
            .aspectRatio(contentMode: .fit)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white,lineWidth: 5))
            .shadow(radius: 12)
    }
}

#Preview {
    GorselView(image:Image("spider"))
}
