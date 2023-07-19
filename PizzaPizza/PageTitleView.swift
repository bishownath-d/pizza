//
//  HeaderView.swift
//  PizzaPizza
//
//  Created by Bishownath Dhakal on 2023-05-11.
//

import SwiftUI

struct PageTitleView: View {
    var title: String
    var isDisplayingOrders: Bool! = nil
    var body: some View {
        
        HStack {
            Spacer()
            Text(title)
                .foregroundColor(Color("green1"))
                .font(.largeTitle)
                .bold()
                .padding(.trailing, 20)
        }
        .overlay(
            Image(systemName: "chevron.up.square")
                .rotationEffect(isDisplayingOrders ?? false ? Angle(degrees: 0.0) : Angle(degrees: 180.0))
                .animation(.easeInOut(duration: 0.5))
                .foregroundColor(isDisplayingOrders != nil ? Color("green1") : .clear)
                .font(.title)
                .padding(),alignment: .leading
        )
        .background(Color("green2"))
    }
}

struct PageTitleView_Previews: PreviewProvider {
    static var previews: some View {
        PageTitleView(title: "Order Pizza",isDisplayingOrders: true)
        PageTitleView(title: "Order Pizza",isDisplayingOrders: true)
            .preferredColorScheme(.dark)
    }
}
