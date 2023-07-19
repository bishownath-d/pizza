//
//  ListHeaderView.swift
//  PizzaPizza
//
//  Created by Bishownath Dhakal on 2023-05-11.
//

import SwiftUI

struct ListHeaderView: View {
    @ObservedObject var orderModel: OrderModel
    var listHeader: String
    var body: some View {
        HStack(alignment: .firstTextBaseline){
            Text(listHeader)
                .padding(.leading, 5)
            Spacer()
            Text(orderModel.formattedTotal)
        }
        .font(.headline)
        .background(Color("green1"))
        .foregroundColor(Color("green2"))
    }
}


struct ListHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        ListHeaderView(orderModel: OrderModel(), listHeader: "Menu")
    }
}
