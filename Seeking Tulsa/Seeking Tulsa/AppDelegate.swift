//
//  AppDelegate.swift
//  Seeking Tulsa
//
//  Created by P.M. Student on 12/6/19.
//  Copyright © 2019 Gauge Parker. All rights reserved.
//

import UIKit
import CoreLocation
import UserNotifications

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
var window: UIWindow?
    
let center = UNUserNotificationCenter.current()
let locationManager = CLLocationManager()

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
    let allowPopUpColor = UIColor(red: 0/255, green: 104/255, blue: 55/255, alpha: 1)
    UITabBar.appearance().tintColor = allowPopUpColor
    center.requestAuthorization(options: [.alert, .sound]) { granted, error in
        }
    locationManager.requestAlwaysAuthorization()
    return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}


