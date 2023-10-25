//
//  ContentView.swift
//  StockRank-SwiftUI
//
//  Created by joonwon lee on 2022/05/21.
//

import SwiftUI

struct StockRankView: View {
    
    @State var list = StockModel.list
    
    var body: some View {
        
        NavigationView {
            // StockRankRow 에서 @Binding을 하였으므로 $사인 추가해서 넘겨줌.
            List($list) { item in
                ZStack {
                    NavigationLink {
                        StockDetailView(stock: item) //target
                    } label: {
                        EmptyView()
                    }
                    StockRankRow(stock: item)
                }
                .listRowInsets(EdgeInsets())
                .frame(height: 80)
            }
            .listStyle(.plain)
            .navigationTitle("Stock Rank")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        StockRankView()
            .preferredColorScheme(.dark)
    }
}
