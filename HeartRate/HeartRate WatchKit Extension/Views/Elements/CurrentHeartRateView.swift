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
    
    @State var isAnimate = false
    
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
                    .scaleEffect(self.isAnimate ? 1 : 0.8)
                    .animation(.easeInOut)
            }
        }
        .onAppear {
            Timer.scheduledTimer(withTimeInterval: 0.5, repeats: true) {_ in
                self.isAnimate.toggle()
            }
        }
    }
}
