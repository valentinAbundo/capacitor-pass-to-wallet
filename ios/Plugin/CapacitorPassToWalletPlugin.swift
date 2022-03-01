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
                    let error =
                    """
                    {"code": 100,"message": "Pass already added"}
                    """
                    call.reject(error);
                } else {
                    if let vc = PKAddPassesViewController(pass: pass) {
                        call.resolve([
                            "value": implementation.echo("SUCCESS")
                        ]);
                        self.bridge?.viewController?.present(vc, animated: true, completion: nil);
                    }
                }
            } else {
                let error =
                """
                {"code": 101,"message": "PKPASS file has invalid data"}
                """
        
                call.reject(error);
            }
        } else {
            let error =
            """
            {"code": 102,"message": "Error with base64 data"}
            """
            call.reject(error);
            
        }
        
    }
}
