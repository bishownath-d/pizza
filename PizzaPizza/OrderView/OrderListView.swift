//
//  OrderListView.swift
//  PizzaPizza
//
//  Created by Bishownath Dhakal on 2023-05-11.
//

import SwiftUI

struct OrderListView: View {
    var orderModel: OrderModel
    var body: some View {
        VStack {
            
            List{
                Section(header: ListHeaderView(orderModel: orderModel, listHeader: "Your Order")) {
                    ForEach(orderModel.orders){ item in
                        OrderRowView(orderItem: item)
                    }.onDelete(perform: delete)
                }
                
            }
            .listStyle(.plain)
        }
    }
    func delete(at offsets: IndexSet){
        orderModel.orders.remove(atOffsets: offsets)
    }
}

struct OrderListView_Previews: PreviewProvider {
    static var previews: some View {
        OrderListView(orderModel: OrderModel())
    }
}
