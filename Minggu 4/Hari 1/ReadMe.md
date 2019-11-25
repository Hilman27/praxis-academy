### Hari 1 : Platform Specific Code
Dart memiliki kelebihan dalam membuat UI, tapi kurang akses terhadap beberapa fitur API yang tersedia untuk Java dan Kotlin. Flutter dapat menggunakan fitur API tersebut menggunakan Channel melalui file Java atau Kotlin. Penggunaan Channel memerlukan pemanggilan nama channel di file dart dan file java yang ingin dipanggil.

Misalnya

```dart
import 'package:flutter/services.dart';
// di File Darts
static const platform = const MethodChannel('samples.flutter.dev/battery');
```

```java
import io.flutter.plugin.common.MethodChannel;
//di File Java
private static final String CHANNEL = "samples.flutter.dev/battery";
```

Setelah deklarasi tersebut, flutter dapat memanggil fungsi java memakai

```dart
//Pemanggilan file darts
final int result = await platform.invokeMethod('getBatteryLevel');
```

```java
//Fungsi Java yang dipanggil
private int getBatteryLevel() {
      int batteryLevel = -1;
      if (VERSION.SDK_INT >= VERSION_CODES.ECLAIR) {
        BatteryManager batteryManager = (BatteryManager) getSystemService(BATTERY_SERVICE);
        batteryLevel = batteryManager.getIntProperty(BatteryManager.BATTERY_PROPERTY_CAPACITY);
      } else {
        Intent intent = new ContextWrapper(getApplicationContext()).
            registerReceiver(null, new IntentFilter(Intent.ACTION_BATTERY_CHANGED));
        batteryLevel = (intent.getIntExtra(BatteryManager.EXTRA_LEVEL, -1) * 100) /
            intent.getIntExtra(BatteryManager.EXTRA_SCALE, -1);
      }
    
      return batteryLevel;
    }
```

Perlu dicatat bahwa untuk menjalankan kode di Windows diperlukan pengaturan enviroment variable path java.
