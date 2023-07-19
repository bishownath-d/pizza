//
//  OrderRowView.swift
//  PizzaPizza
//
//  Created by Bishownath Dhakal on 2023-05-11.
//

import SwiftUI

struct OrderRowView: View {
    var orderItem: OrderItem
    var body: some View {
        VStack {
            HStack{
                Text("\(orderItem.id)")
                Text(orderItem.description)
                Spacer()
                Text(orderItem.formattedExtendedPrice)
                    .bold()
            }
            Text("\(orderItem.comments)")
        }
    }
}


struct OrderRowView_Previews: PreviewProvider {
    static var previews: some View {
        OrderRowView(orderItem: testOrderItem)
            .environment(\.sizeCategory, .accessibilityExtraLarge)
    }
}
