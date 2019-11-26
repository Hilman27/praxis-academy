package com.mocha.flutter_plugin;

import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugin.common.MethodChannel.MethodCallHandler;
import io.flutter.plugin.common.MethodChannel.Result;
import io.flutter.plugin.common.PluginRegistry.Registrar;

/** FlutterPlugin */
public class FlutterPlugin implements MethodCallHandler {
  /** Plugin registration. */
  public static void registerWith(Registrar registrar) {
    final MethodChannel channel = new MethodChannel(registrar.messenger(), "flutter_plugin");
    channel.setMethodCallHandler(new FlutterPlugin());
  }

  @Override
  public void onMethodCall(MethodCall call, Result result) {
    if (call.method.equals("getPlatformVersion")) {
      result.success("Android " + android.os.Build.VERSION.RELEASE);
    } else if (call.method.equals("getManufacture")) {
      result.success("Android " + android.os.Build.MANUFACTURER);
      //result.success("Android " + android.os.Build.getManufacture);
    } else if (call.method.equals("getModel")) {
      result.success("Android " + android.os.Build.BOARD);
      //result.success("Android " + android.os.Build.getModel);
    }
    
    else {
      result.notImplemented();
    }
  }
}
