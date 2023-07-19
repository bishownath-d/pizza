//
//  ContentHeaderView.swift
//  PizzaPizza
//
//  Created by Bishownath Dhakal on 2023-05-11.
//

import SwiftUI

struct ContentHeaderView: View {
    var body: some View {
        VStack {
            ZStack{
                Image("Surf Board")
                    .resizable()
                    .scaledToFit()
                    .frame(minWidth: 200, idealWidth: 250, maxWidth: 500, minHeight: 75, idealHeight: 143, maxHeight: 150, alignment: .center)
                Text("Pizza Pizza")
//                    .offset(CGSize(width: 0, height: 30))
                    .offset(x: -20, y: 30)
                    .font(.title)
                    .foregroundColor(Color("white1"))
            }
                        
            
        }
    }
}

struct ContentHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        ContentHeaderView()
    }
}


