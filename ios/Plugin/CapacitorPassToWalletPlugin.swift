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
        /* call.resolve([
            "value": implementation.echo(uri)
        ]) */
        print("-----------DATA-----------------");
        print(data);
        if let dataPass = Data(base64Encoded: data, options: .ignoreUnknownCharacters){
            if let pass = try? PKPass(data: dataPass){
                if(PKPassLibrary().containsPass(pass)) {
                    print("Pass already added");
                } else {
                   
                    
                    if let vc = PKAddPassesViewController(pass: pass) {
                        print("added");
                        self.bridge?.viewController?.present(vc, animated: true, completion: nil);
                        call.resolve([
                            "base64": implementation.echo(data)
                        ])
                    }
                }
            }
        } else {
            print("ERROR", data);
            call.reject("ERROR");
        }
        
        /* if let url = Bundle.main.url(forResource: uri, withExtension: "pkpass") {
            print(url, "--------URL---------------");
            if let data = try? Data(contentsOf: url){
                if let pass = try? PKPass(data: data){
                    if(PKPassLibrary().containsPass(pass)) {
                        print("Pass already added");
                    } else {
                        if let vc = PKAddPassesViewController(pass: pass) {
                            print("added");
                            vc.self.present(vc, animated: true, completion: nil)
                            call.resolve([
                                "uri": implementation.echo(uri)
                            ])
                        }
                    }
                }
            }
        } else {
            print("ERROR", uri);
            call.reject("ERROR");
        } */
    }
}
