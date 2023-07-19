//
//  ContentView.swift
//  PizzaPizza
//
//  Created by Bishownath Dhakal on 2023-05-11.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var orderModel: OrderModel
    @State var isMenuDisplayed: Bool = true
    var body: some View {
        VStack {
//            ContentHeaderView()
//                .layoutPriority(2)
            Button {
                self.isMenuDisplayed.toggle()
            } label: {
                PageTitleView(title: "Order Pizza" , isDisplayingOrders: isMenuDisplayed)
            }

            MenuListView(orderModel: orderModel)
                .layoutPriority(isMenuDisplayed ? 1.0 : 0.5)
            OrderListView(orderModel: orderModel)
                .layoutPriority(isMenuDisplayed ? 0.5 : 1)
            Spacer()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView(orderModel: OrderModel())
                .environmentObject(UserPreferences())
            
            ContentView(orderModel: OrderModel())
                .environmentObject(UserPreferences())
                .colorScheme(.dark)
                .background(.black)
            //            .previewDevice("iPad Pro (11-inch)")
        }
    }
}
