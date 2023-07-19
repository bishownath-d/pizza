//
//  RootTabView.swift
//  PizzaPizza
//
//  Created by Bishownath Dhakal on 2023-05-20.
//

import SwiftUI

struct RootTabView: View {
    var orderModel: OrderModel
    var body: some View {
        TabView {
            ContentView(orderModel: OrderModel())
                .tabItem{
                    Image(systemName: "cart")
                    Text("Orders")
                }
            
            HistoryScreenView()
                .tabItem {
                    Image(systemName: "book")
                    Text("History")
                }
        }
    }
}

struct RootTabView_Previews: PreviewProvider {
    static var previews: some View {
        RootTabView(orderModel: OrderModel())
            .environmentObject(UserPreferences())
    }
}
