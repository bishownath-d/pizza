//
//  MenuRowView.swift
//  PizzaPizza
//
//  Created by Bishownath Dhakal on 2023-05-11.
//

import SwiftUI

struct MenuRowView: View {
    var menuItem: MenuItem = testMenuItem
    var body: some View {
        HStack(alignment: .top, spacing: 15) {
            Image("\(menuItem.id)_100w")
                .cornerRadius(8)

            VStack(alignment: .leading) {
                Text(menuItem.name)
                RatingView()
            }
            Spacer()
        }
//        VStack {
//            Text("Inventory")
//                .font(.title)
//
//
//            VStack {
//                Label("Paperclips", systemImage: "paperclip.circle.fill")
//
//                Text("3")
//            }
//        }
    }
}

struct MenuRowView_Previews: PreviewProvider {
    static var previews: some View {
        MenuRowView(menuItem: MenuModel().menu[0])
    }
}


