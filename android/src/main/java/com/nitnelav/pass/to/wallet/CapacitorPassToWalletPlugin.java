package com.nitnelav.pass.to.wallet;

import com.getcapacitor.JSArray;
import com.getcapacitor.JSObject;
import com.getcapacitor.Plugin;
import com.getcapacitor.PluginCall;
import com.getcapacitor.PluginMethod;
import com.getcapacitor.annotation.CapacitorPlugin;

@CapacitorPlugin(name = "CapacitorPassToWallet")
public class CapacitorPassToWalletPlugin extends Plugin {

    private CapacitorPassToWallet implementation = new CapacitorPassToWallet();


    @PluginMethod
    public void addToWallet(PluginCall call) {
        String value = call.getString("base64");

        JSObject ret = new JSObject();
        ret.put("base64", implementation.addToWallet("Method not implemented on android."));
        call.resolve(ret);
    }
}
