 //
//  AppDelegate.swift
//  ATM-FinderV2
//
//  Created by Francis Jemuel Bergonia on 20/12/2017.
//  Copyright © 2017 Francis Jemuel Bergonia. All rights reserved.
//

import UIKit
import GooglePlaces
import GoogleMaps

internal let kMapsAPIKey = "AIzaSyAqVn11MrD5nHQ4YPZEC_jmPOujbRng23Y"

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        if kMapsAPIKey.isEmpty {
            
            let bundleId = Bundle.main.bundleIdentifier!
            let msg = "Configure API keys inside Appdelegate.swift for your  bundle `\(bundleId)`, " +
            "see README.GooglePlacesClone for more information"
            print(msg)
        }
        
        //Configure API key
        GMSPlacesClient.provideAPIKey(kMapsAPIKey)
        GMSServices.provideAPIKey(kMapsAPIKey)
        
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
    }

    func applicationWillTerminate(_ application: UIApplication) {
    }


}

