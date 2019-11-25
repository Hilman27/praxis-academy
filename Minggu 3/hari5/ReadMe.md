### Hari 5 : Lokalisasi/ Internasionalisasi
Sebuah App dapat memiliki berbagai versi bahasa, tapi akan menyebalkan jika harus membuat program untuk setiap bahasa, oleh karena itu ada sebuah fungsi bernama localization. Dengan plug in ini, bahasa dapat diganti bedasarkan bahasa yang digunakan oleh user. Untuk menggunakan plug in ini perlu ditambahkan ke dependencies.

```yaml
dependencies:
  flutter:
    sdk: flutter
  flutter_localizations:
    sdk: flutter
  flutter_cupertino_localizations: ^1.0.1
```
Localisation dapat memanggil string dari file json di folder bahasa bedasarkan key yang dimasukan. Dengan ini pengguna dapat membuat kopi file JSON dan menerjemahkan string yang ada.

Terjemahan Inggris
![Icon diganti](https://github.com/Hilman27/picutreRepo/blob/master/Media7/5_Translate_Eng.PNG?raw=true)

Terjemahan Slovakia
![Icon diganti](https://github.com/Hilman27/picutreRepo/blob/master/Media7/5_Translate_Slovakia.PNG?raw=true)

Terjemahan Indonesia
![Icon diganti](https://github.com/Hilman27/picutreRepo/blob/master/Media7/6_Translate_INA.PNG?raw=true)
