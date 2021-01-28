//
//  ContentView.swift
//  HeartRate WatchKit Extension
//
//  Created by Anastasia Ryabenko on 27.01.2021.
//

import SwiftUI
import HealthKit

struct HeartRateMesurementView: View {
    @ObservedObject var heartRateMeasurementService = HeartRateMeasurementService()
    
    var body: some View {
        VStack {
            VStack(spacing: 8) {
                HeartRateHistoryView(title: "Max heart rate: ",
                                     value: heartRateMeasurementService.maxHeartRate)
                    .accentColor(.red)
                HeartRateHistoryView(title: "Min heart rate: ",
                                     value: heartRateMeasurementService.minHeartRate)
                    .accentColor(.green)
            }
            Spacer()
            CurrentHeartRateView(value: heartRateMeasurementService.currentHeartRate)
            if heartRateMeasurementService.currentHeartRate > 150 {
                Text("Keep calm\n🧘🏻")
                    .multilineTextAlignment(.center)
                    .font(.footnote)
            } else {
                Text("Heart rate is normal\n👌🏼")
                    .multilineTextAlignment(.center)
                    .font(.footnote)
            }
            Spacer()
        }.padding()
    }
}

struct HeartRateMesurementView_Previews: PreviewProvider {
    static var previews: some View {
        HeartRateMesurementView()
    }
}
