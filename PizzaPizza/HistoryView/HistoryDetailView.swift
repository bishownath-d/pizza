//
//  HistoryDetailView.swift
//  PizzaPizza
//
//  Created by Bishownath Dhakal on 2023-05-19.
//

import SwiftUI

struct HistoryDetailView: View {
//    var historyModel: HistoryModel
    var historyItem: HistoryItem
//    @Binding var imageID: Int
    var body: some View {
//        imageID = historyItem.id
        return VStack {
            PageTitleView(title: historyItem.name)
            ScrollView {
                
                Text("\(historyItem.history)")
                    .frame(height: 300)
                Spacer()
            }
            
        }
    }
}

struct HistoryDetailView_Previews: PreviewProvider {
    static var previews: some View {
        HistoryDetailView(historyItem: HistoryModel().historyItems[0]
//                          , imageID: .constant(0)
        )
    }
}
