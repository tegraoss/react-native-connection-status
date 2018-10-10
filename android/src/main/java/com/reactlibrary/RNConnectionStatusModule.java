
package com.reactlibrary;

import android.annotation.TargetApi;
import android.content.Context;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.os.Build;

import com.facebook.react.bridge.Callback;
import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReactContextBaseJavaModule;
import com.facebook.react.bridge.ReactMethod;

public class RNConnectionStatusModule extends ReactContextBaseJavaModule {

    private final ReactApplicationContext reactContext;

    public RNConnectionStatusModule(ReactApplicationContext reactContext) {
        super(reactContext);
        this.reactContext = reactContext;
    }

    @Override
    public String getName() {
        return "RNConnectionStatus";
    }

    @ReactMethod
    @TargetApi(Build.VERSION_CODES.M)
    private void hasInternetConnection(Callback callback) {
        final ConnectivityManager connectivityManager = (ConnectivityManager) this.reactContext.
                getSystemService(Context.CONNECTIVITY_SERVICE);

        final Network network = connectivityManager.getActiveNetwork();
        final NetworkCapabilities capabilities = connectivityManager
                .getNetworkCapabilities(network);

        final boolean hasInternetConnection = capabilities != null
                && capabilities.hasCapability(NetworkCapabilities.NET_CAPABILITY_INTERNET)
                && capabilities.hasCapability(NetworkCapabilities.NET_CAPABILITY_VALIDATED);

        callback.invoke(hasInternetConnection);
    }
}