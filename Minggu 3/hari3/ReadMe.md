### Hari 3 : Implementasi database firebase
Flutter dapat menggunakan berbagai macam database. Jika di praktikum sebelumnya telah digunakan JSON, maka kali ini akan digunakan database Online, yaitu Firebase.

Untuk dapat mengakses firebase, diperlukan dependencies firebase_core dan cloud_firestore di file Yaml. Perlu dicatat bahwa firebase masih aktif dan dalam pengembangan, jadi lebih baik memasang versi ke any supaya menarik versi terbaru.

```yaml
dependencies:
  flutter:
    sdk: flutter

  # The following adds the Cupertino Icons font to your application.
  # Use with the CupertinoIcons class for iOS style icons.
  cupertino_icons: ^0.1.2
  firebase_core: any
  #firebase_auth: any
  cloud_firestore: any

dev_dependencies:
  flutter_test:
    sdk: flutter
```    
Selain Yaml, perlu ditambahkan classPath di build gradle. Perlu dicatat bahwa versi google service yang berhasil dipakai adalah 4.2.0. Penggunaan versi yang lebih baru atau lama akan membuat gradle error.

```gradle
buildscript {
    ...
    repositories {
        google()        
    }

    dependencies {
        ...
        classpath 'com.google.gms:google-services:4.2.0' //New
    }
}
```    
Untuk dapat mengakses firebase, diperlukan StreamBuilder yang akan membaca dari database.

```dart
Widget _buildBody(BuildContext context) {
 return StreamBuilder<QuerySnapshot>(
   stream: Firestore.instance.collection('baby').snapshots(),
   builder: (context, snapshot) {
     if (!snapshot.hasData) return LinearProgressIndicator();

     return _buildList(context, snapshot.data.documents);
   },
 );
}
```    

Sedangkan untuk mengirim ke databse diperlukan :
```dart
record.reference.updateData({'Vote': FieldValue.increment(1)})
```    
