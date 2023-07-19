//
//  RatingView.swift
//  PizzaPizza
//
//  Created by Bishownath Dhakal on 2023-05-11.
//

import SwiftUI

struct RatingView: View {
   
    var count: Int = 4
    var ratings: [String]{
        let symbolName = "\(count).circle"
        return Array(repeating: symbolName, count: count)
    }
    var body: some View {
        HStack {
            ForEach(ratings, id: \.self){ item in
                Image(systemName: item)
                    .foregroundColor(Color("green2"))
                    .cornerRadius(30)
                    .padding(.top, 10)
            }
        }
    }
}


struct RatingView_Previews: PreviewProvider {
    static var previews: some View {
        RatingView(count: 5)
    }
}
