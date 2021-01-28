//
//  HeartRateHistoryView.swift
//  HeartRate WatchKit Extension
//
//  Created by Anastasia Ryabenko on 28.01.2021.
//

import SwiftUI

struct HeartRateHistoryView: View {
    var title: String
    var value: Int
    var units = "BPM"
    
    var body: some View {
        HStack(spacing: 4) {
            Text(title)
                .fontWeight(.regular)
                .font(.system(size: 12))
            Text(String(value))
                .fontWeight(.bold)
                .font(.system(size: 16))
                .foregroundColor(.accentColor)
            VStack {
                Text(units)
                    .font(.system(size: 6))
                    .foregroundColor(.accentColor)
                Spacer()
            }
            Spacer()
        }
    }
}
