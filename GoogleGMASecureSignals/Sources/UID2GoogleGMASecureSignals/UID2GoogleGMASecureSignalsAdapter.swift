//
//  UID2GoogleIMASecureSignalsAdapter.swift
//
//
//  Created by Brad Leege on 3/3/23.
//

import Foundation
import UID2
import GoogleMobileAds

public class UID2GoogleGMASecureSignalsAdapter: NSObject {
    
    override required public init() { }
    
}

extension UID2GoogleGMASecureSignalsAdapter: GADRTBAdapter {
    
    public func collectSignals(for params: GADRTBRequestParameters, completionHandler: @escaping GADRTBSignalCompletionHandler) {
        DispatchQueue.main.async {
            guard let advertisingToken = UID2Manager.shared.getAdvertisingToken() else {
                completionHandler(nil, nil)
                return
            }
            let signals = "uidtoken=" + advertisingToken
            
            completionHandler(signals, nil)
        }
    }
        
    public static func adapterVersion() -> GADVersionNumber {
        var versionNumber = GADVersionNumber()
        versionNumber.majorVersion = 1
        versionNumber.minorVersion = 0
        versionNumber.patchVersion = 0
        return versionNumber
    }
    
    public static func adSDKVersion() -> GADVersionNumber {
        var versionNumber = GADVersionNumber()
        versionNumber.majorVersion = 10
        versionNumber.minorVersion = 1
        versionNumber.patchVersion = 0
        return versionNumber
    }
    
    public static func networkExtrasClass() -> GADAdNetworkExtras.Type? {
        return nil
    }
    
}
