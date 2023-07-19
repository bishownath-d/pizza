//
//  MenuListView.swift
//  PizzaPizza
//
//  Created by Bishownath Dhakal on 2023-05-11.
//

import SwiftUI

struct MenuListView: View {
    @ObservedObject var orderModel: OrderModel
    @EnvironmentObject var settings:UserPreferences
    var menuList =  MenuModel().menu
    var body: some View {
        VStack {
            ListHeaderView(orderModel: orderModel, listHeader: "Menu")
            NavigationView {
                List(menuList){ item in
                    NavigationLink(destination: MenuDetailView(orderModel: self.orderModel, menuItem: item)) {
                        MenuRowView(menuItem: item)
                    }
                    .navigationTitle("Pizza Order")
                }
                .listStyle(.plain)
            }
        }
    }
}

struct MenuListView_Previews: PreviewProvider {
    static var previews: some View {
        MenuListView(orderModel: OrderModel())
            .environmentObject(UserPreferences())
    }
}

