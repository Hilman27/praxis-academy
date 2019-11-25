### Hari 4 : Silver and Gesture

### Kasus
Dalam kasus ini, applikasi di latihan perlu ditambahkan GestureDetection supaya dapat melompat dari satu header ke header lain.
Supaya header dapat ditouch, template header di makeHeader harus ditambahkan GestureDetector di atas container header. Dengan adanya Gesture detection ini, opsi onTap dapat digunakan. Masukan method void ke dalam opsi onTap.

```dart
SliverPersistentHeader(
      pinned: true,
      delegate: _SliverAppBarDelegate(
        minHeight: 60.0,
        maxHeight: 150.0,
        child: GestureDetector(
          child: Container(
            color: Colors.lightBlue, 
            child: Center(child:
                Text(headerText)
            ),                        
          ),
        onTap: () => _viewControling(index)
        ),
        ),
    );
```


Method yang dipakai harus private dan mengambil nilai header index untuk membedakan header satu dan header lain. Nilai header tersebut kemudian dipakai dalam loop yang akan mengatur scrolling . Scrolling diatur dengan ScrollController yang harus di deklarasikan di dalam class, tapi di luar fungsi. ScrollController akan melakukan scroll tergantung index header.


```dart
ScrollController scrollController = new ScrollController();
void  _viewControling(int loop){  
  for (int i = 0; i < loop; i++) {
    scrollController.animateTo(i * 1000.toDouble(), duration: new Duration(seconds: 2), curve: Curves.ease);  
  }
 }
```
