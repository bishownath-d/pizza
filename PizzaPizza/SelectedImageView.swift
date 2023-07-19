//
//  SelectedImageView.swift
//  PizzaPizza
//
//  Created by Bishownath Dhakal on 2023-05-11.
//

import SwiftUI

struct SelectedImageView: View {
    var image: String
    var body: some View {
        VStack {
            Image(image)
                .resizable()
                .cornerRadius(10)
                .shadow(color:.black,radius: 5,x:0,y:20)
                
        }
        .padding([.bottom,.leading,.trailing], 20)
        
    }
}

struct SelectedImageView_Previews: PreviewProvider {
    static var previews: some View {
        SelectedImageView(image: "1_250w")
    }
}
