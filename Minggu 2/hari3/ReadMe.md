### Assets dan Route
Asset dapat diimport setelah menginclude di pubspec.yaml

```
flutter :
	assets:
	  - images/
```

Kemudian dipanggil dengan syntax

>Image(image: AssetImage('images/pic1.jpg'),

Selain digunakan dalam program, assets dapat juga dipakai untuk mengubah splash screen dan icon. Folder icon berada di (DirektoriProject)/Android/app/src/main/res. Dengan mereplace icon di dalamnya, icon pada applikasi juga akan berubah

![Icon diganti](https://github.com/Hilman27/picutreRepo/blob/master/Media5/7_IconChange.PNG?raw=true)

Berikut adalah splashScreen yang telah diubah.Splash Screen tersimpan pada drawable/launch_background.xml. Karena format file xml, pengeditan juga memakai xml

```
<?xml version="1.0" encoding="utf-8"?>
<layer-list xmlns:android="http://schemas.android.com/apk/res/android">
    <item android:drawable="@android:color/white" />
	<item>	
	<bitmap
        android:gravity="center"
        android:src="@mipmap/ic_launcher" />
	</item>		   
</layer-list>
```

![SplashScreen diganti](https://github.com/Hilman27/picutreRepo/blob/master/Media5/9_SplashScreen.PNG?raw=true)

## 1) Hero
Ada sebuah Widget bernama hero yang akan membawa widget di dalamnya lanjut ke page berikutnya setelah transisi. Dalam percobaan ini, gambar adalah sebuah hero widget dengan image widget di dalamnya. Ketika tombol ditekan, layar akan berpindah ke DetailScreen dengan animasi transisi. Namun sedikit peringatan untuk text karena ketika transisi text tidak akan meenyimpan style sampai animasi berakhir.

![SplashScreen diganti](https://github.com/Hilman27/picutreRepo/blob/master/Media5/1_Hero1.PNG?raw=true)
![SplashScreen diganti](https://github.com/Hilman27/picutreRepo/blob/master/Media5/2_Hero2.PNG?raw=true)

## 2) navigation.push dan navigation.pop
Navigator.push adalah method untuk berganti ke laman lain dan pop untuk kembali ke awal.
Dalam percobaan ini, tombol di laman pertama akan membuat builder yang akan melakukan push ke laman 2. Di laman 2, tombol di tengah akan melakukan pop, membawa layar kembali ke layar utama.

![Navigation Push](https://github.com/Hilman27/picutreRepo/blob/master/Media5/3_Push_1.PNG?raw=true)
![Navigation Pop](https://github.com/Hilman27/picutreRepo/blob/master/Media5/4_Push_2.PNG?raw=true)

## 3) Pass Argument
Argument dapat dipassing dari method ke method lain dengan membuat class ekstraksi argumen. Class tersebut kemudian bisa dipakai sebagai builder sebelum memanggil laman kedua. Cara lain adalah dengan passing argumen melalui route.

![Navigation Push](https://github.com/Hilman27/picutreRepo/blob/master/Media5/5_ArgumentPass_1.PNG?raw=true)
![Navigation Pop](https://github.com/Hilman27/picutreRepo/blob/master/Media5/5_ArgumentPass_2A.PNG?raw=true)
![Navigation Pop](https://github.com/Hilman27/picutreRepo/blob/master/Media5/5_ArgumentPass_2B.PNG?raw=true)

## 4) Return Data
Data dapat dikirim kembali dengan metode async yang menunggu jawaban. jawaban dapat dikirim kembali dengan pop dan memasukan jawaban dalam argumen pop.

![Navigation Push](https://github.com/Hilman27/picutreRepo/blob/master/Media5/6_returnData_1.PNG?raw=true)
![Navigation Pop](https://github.com/Hilman27/picutreRepo/blob/master/Media5/6_returnData_2.PNG?raw=true)
![Navigation Pop](https://github.com/Hilman27/picutreRepo/blob/master/Media5/6_returnData_3.PNG?raw=true)

## 5) Passing Data
Passing data kali ini menggunakan constructor pada builder data dipassing melalui constructor method.
![Navigation Push](https://github.com/Hilman27/picutreRepo/blob/master/Media5/8_PassingDatatoNewPage.PNG?raw=true)
![Navigation Pop](https://github.com/Hilman27/picutreRepo/blob/master/Media5/8_PassingDatatoNewPage2.PNG?raw=true)

### Kasus
Dalam kasus ini MyApp yang dijalankan pertama kali memiliki dua route. route inisial yang mengarah ke homepage dan route yang mengarah ke signup Page. dikarenakan perlu perintah flutter create --sample=widgets.Navigator.1 mysample untuk dapat masuk ke /signup, tapi tidak bisa diakses melalui cara debug biasa, saya membuat sebuah tombol di homepage yang melakukan navigation push ke /signup.

![SplashScreen diganti](https://github.com/Hilman27/picutreRepo/blob/master/Media5/10_Kasus_1.PNG?raw=true)

Begitu masuk ke /signup, route akan membawa ke CollectPersonalInfoPage, kemudian ChooseCredentialPage. Ini dapat terjadi karena penggunaan switch case di SignupPage. Sebuah builder akan terbuat setiap menekan tombol di CollectPersonalInfoPage dan ChooseCredentialPage, yang akan membawa kembali ke signup page jika kondisi terpenuhi. Setelah menekan tombol ChooseCredentialPage, onSignupComplete akan terinvoke, membawa kembali ke builder di SignupPage yang kemudian akan eksekusinavigation.pop, mengirim layar kembali ke halaman home.

![SplashScreen diganti](https://github.com/Hilman27/picutreRepo/blob/master/Media5/10_Kasus_2.PNG?raw=true)
![SplashScreen diganti](https://github.com/Hilman27/picutreRepo/blob/master/Media5/10_Kasus_3.PNG?raw=true)
