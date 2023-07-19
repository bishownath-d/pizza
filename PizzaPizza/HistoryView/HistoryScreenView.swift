//
//  HistoryScreenView.swift
//  PizzaPizza
//
//  Created by Bishownath Dhakal on 2023-05-11.
//

import SwiftUI

struct HistoryScreenView: View {
    
    var body: some View {
        VStack {
//            ContentHeaderView()
            PageTitleView(title: "Pizza History")
            SelectedImageView(image: "1_250w")
            HistoryListView()
        }
    }
}

struct HistoryScreenView_Previews: PreviewProvider {
    static var previews: some View {
        HistoryScreenView()
        HistoryScreenView()
            .preferredColorScheme(.dark)
    }
}
