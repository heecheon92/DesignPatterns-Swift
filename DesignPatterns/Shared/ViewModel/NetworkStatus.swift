//
//  NetworkStatus.swift
//  DesignPatterns (iOS)
//
//  Created by Heecheon Park on 5/6/22.
//

import Foundation
import Network
import SystemConfiguration


public final class Network: NSObject {
    
    public static var shared = Network()
    override private init() { super.init() }
    
    public private(set) var mInterface: NWInterface.InterfaceType = .other
    public private(set) var mStatus: NWPath.Status = .unsatisfied
    public var isNetworkAvailable: Bool {
        return self.mStatus == .satisfied
    }
    
    private let monitor = NWPathMonitor()
    
    public func updateNetworkStatus() -> Void {
        let semaphore = DispatchSemaphore(value: 0)
        self.monitor.start(queue: DispatchQueue.global(qos: .userInteractive))
        self.monitor.pathUpdateHandler = { [weak self] path in
            guard let self = self else { return }
            self.mStatus = path.status
            if (path.usesInterfaceType(.wifi)) { self.mInterface = .wifi }
            else if (path.usesInterfaceType(.cellular)) { self.mInterface = .cellular }
            else if (path.usesInterfaceType(.loopback)) { self.mInterface = .loopback }
            else if (path.usesInterfaceType(.wiredEthernet)) { self.mInterface = .wiredEthernet }
            else { self.mInterface = .other }
            semaphore.signal()
        }
        semaphore.wait()
    }
}
