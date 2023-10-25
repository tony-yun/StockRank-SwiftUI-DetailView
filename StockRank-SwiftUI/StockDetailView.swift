//
//  StockDetailView.swift
//  StockRank-SwiftUI
//
//  Created by 윤태웅 on 10/25/23.
//

import SwiftUI

struct StockDetailView: View {
    
    // single source of truth: @Binding 이 @State를 바라보고 있음.
    @Binding var stock: StockModel
    
    var body: some View {
        VStack(spacing: 40) {
            Image(stock.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 120, height: 120)
            Text(stock.name)
                .font(.system(size: 30, weight: .bold))
            Text("\(stock.price) 원")
                .font(.system(size: 20, weight: .bold))
                .foregroundStyle(stock.diff > 0 ? Color.red : Color.blue)
        }
    }
}

#Preview {
    StockDetailView(stock: .constant(StockModel.list[0]))
        .preferredColorScheme(.dark)
}
