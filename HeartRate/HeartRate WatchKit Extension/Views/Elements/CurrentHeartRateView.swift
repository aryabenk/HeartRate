//
//  CurrentHeartRateView.swift
//  HeartRate WatchKit Extension
//
//  Created by Anastasia Ryabenko on 28.01.2021.
//

import SwiftUI

struct CurrentHeartRateView: View {
    var value: Int
    var units = "BPM"
    
    @State var isAnimating = false
    
    var body: some View {
        HStack(spacing: 8) {
            Text(String(value))
                .fontWeight(.medium)
                .font(.system(size: 60))
            VStack {
                Text("BPM")
                    .font(.footnote)
                Image(systemName: "suit.heart.fill")
                    .resizable()
                    .font(Font.system(.largeTitle).bold())
                    .frame(width: 16, height: 16)
                    .scaleEffect(self.isAnimating ? 1 : 0.8)
                    .animation(Animation.linear(duration: 0.5).repeatForever())
            }
        }
        .onAppear {
            self.isAnimating = true
        }
    }
}
