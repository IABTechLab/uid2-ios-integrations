//
//  UID2GoogleIMASecureSignalsAdapter.swift
//  
//
//  Created by Brad Leege on 3/3/23.
//

import Foundation
import UID2
import GoogleInteractiveMediaAds

public class UID2GoogleIMASecureSignalsAdapter: NSObject {
    
    override required public init() {
        super.init()
    }
    
}

extension UID2GoogleIMASecureSignalsAdapter: IMASecureSignalsAdapter {
    
    public static func adapterVersion() -> IMAVersion {
        let version = IMAVersion()
        version.majorVersion = 1
        version.minorVersion = 0
        version.patchVersion = 0
        return version
    }
    
    public static func adSDKVersion() -> IMAVersion {
        let version = IMAVersion()
        version.majorVersion = 3
        version.minorVersion = 18
        version.patchVersion = 4
        return version
    }
    
    public func collectSignals(completion: @escaping IMASignalCompletionHandler) {
        
        DispatchQueue.main.async {
            guard let advertisingToken = UID2Manager.shared.getAdvertisingToken() else {
                completion(nil, nil)
                return
            }
            let signals = "uidtoken=" + advertisingToken

            completion(signals, nil)
        }
    }
    
}
