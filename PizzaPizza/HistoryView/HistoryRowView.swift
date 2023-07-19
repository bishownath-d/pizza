//
//  HistoryRowView.swift
//  PizzaPizza
//
//  Created by Bishownath Dhakal on 2023-05-11.
//

import SwiftUI

struct HistoryRowView: View {
    var historyItem: HistoryItem
    var body: some View {
        HStack(alignment: .top) {
            Image("\(historyItem.id)_100w")
                .clipShape(Circle())
                .shadow(color: .black, radius: 10.0,x:10,y:5)
            Text(historyItem.name)
                .font(.title)
            Spacer()
            Image(systemName: "chevron.right.square")
                .font(.title)
                .padding()
                .foregroundColor(Color("green2"))
        }
    }
}

struct HistoryRowView_Previews: PreviewProvider {
    static var previews: some View {
        HistoryRowView(historyItem: HistoryModel().historyItems[0])
    }
}
