//
//  HistoryRowView.swift
//  PizzaPizza
//
//  Created by Bishownath Dhakal on 2023-05-11.
//

import SwiftUI

struct HistoryListView: View {
    var historyModel = HistoryModel()
//    var historyListItems = HistoryModel().historyItems
//    var itemName: HistoryItem
    var body: some View {
        NavigationView {
            List(historyModel.historyItems){item in
                NavigationLink(destination: HistoryDetailView(historyItem: item)) {
                    HistoryRowView(historyItem: item)
                }
                .listStyle(.plain)
            }
            .listStyle(.plain)
            
        }
        
    }
}

struct HistoryListView_Previews: PreviewProvider {
    static var previews: some View {
        HistoryListView(historyModel: HistoryModel())
    }
}

