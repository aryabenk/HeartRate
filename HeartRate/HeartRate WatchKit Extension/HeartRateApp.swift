//
//  HeartRateApp.swift
//  HeartRate WatchKit Extension
//
//  Created by Anastasia Ryabenko on 27.01.2021.
//

import SwiftUI

@main
struct HeartRateApp: App {
    @SceneBuilder var body: some Scene {
        WindowGroup {
            NavigationView {
                HeartRateMesurementView()
            }
        }
        
        WKNotificationScene(controller: NotificationController.self, category: "myCategory")
    }
}
