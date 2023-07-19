//
//  PizzaPizzaApp.swift
//  PizzaPizza
//
//  Created by Bishownath Dhakal on 2023-05-11.
//

import SwiftUI

@main
struct PizzaPizzaApp: App {
    
    var body: some Scene {
        WindowGroup {
//            ContentView(orderModel: OrderModel())
//                .environmentObject(UserPreferences())
            RootTabView(orderModel: OrderModel())
                .environmentObject(UserPreferences())
        }
    }
}
