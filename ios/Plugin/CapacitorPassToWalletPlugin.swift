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

    @objc func addMultipleToWallet(_ call: CAPPluginCall) {
        let data = call.getArray("base64") ?? [];
        
        var pkPasses = [PKPass]()

        for base64 in data {
            if let dataPass = Data(base64Encoded: base64 as! String, options: .ignoreUnknownCharacters){
                if let pass = try? PKPass(data: dataPass){
                    if(!PKPassLibrary().containsPass(pass)) {
                        pkPasses.append(pass)
                    }
                }
            }
        }
        
        if pkPasses.count > 0 {
            if let vc = PKAddPassesViewController(passes: pkPasses) {
                        call.resolve([
                            "value": implementation.echo("SUCCESS")
                        ]);
                        self.bridge?.viewController?.present(vc, animated: true, completion: nil);
                    }
        } else {
            let error =
            """
            {"code": 103,"message": "PKPASSES file has invalid data"}
            """
            call.reject(error);
        }
       
        
        
    }
}
