import Foundation
import Capacitor
import PassKit

/**
 * Please read the Capacitor iOS Plugin Development Guide
 * here: https://capacitorjs.com/docs/plugins/ios
 */
@objc(CapacitorPassToWalletPlugin)
public class CapacitorPassToWalletPlugin: CAPPlugin {
    private let implementation = CapacitorPassToWallet()

    @objc func echo(_ call: CAPPluginCall) {
        let value = call.getString("value") ?? ""
        call.resolve([
            "value": implementation.echo(value)
        ])
    }

    @objc func addToWallet(_ call: CAPPluginCall) {
        let data = call.getString("base64") ?? ""
       
        if let dataPass = Data(base64Encoded: data, options: .ignoreUnknownCharacters){
            if let pass = try? PKPass(data: dataPass){
                if(PKPassLibrary().containsPass(pass)) {
                    call.reject("Pass already added");
                } else {
                    if let vc = PKAddPassesViewController(pass: pass) {
                        call.resolve([
                            "value": implementation.echo("SUCCESS")
                        ]);
                        self.bridge?.viewController?.present(vc, animated: true, completion: nil);
                    }
                }
            } else {
                call.reject("PKPASS file has invalid data");
            }
        } else {
            call.reject("Error with base64 data");
        }
        
    }
}
