import Foundation

@objc public class CapacitorPassToWallet: NSObject {
    @objc public func echo(_ value: String) -> String {
        print(value)
        return value
    }
}
