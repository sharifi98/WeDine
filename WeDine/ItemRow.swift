//
//  ItemRow.swift
//  WeDine
//
//  Created by Hossein Sharifi on 15/12/2023.
//

import SwiftUI

struct ItemRow: View {
    let item: MenuItem
    var body: some View {
        HStack {
            Image(item.thumbnailImage)
                .cornerRadius(5)
            VStack(alignment: .leading) {
                Text(item.name)
                Text("$\(item.price)")
            }
        }
    }
}

#Preview {
    ItemRow(item: MenuItem.example)
}
