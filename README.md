# Demo Flutter Project 

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

### Notes In Project

>Destination
>SafeArea về cơ bản là một tiện ích Padding được tôn vinh. Nếu bạn bọc một widget khác bằng SafeArea, nó sẽ thêm bất kỳ phần đệm cần thiết nào để giữ cho widget của bạn không bị chặn bởi thanh trên thiết bị của máy
>BoxConstraints : use max width in flutter
>baseline: cho phép định vị con của nó theo dudường cơ sở 
```
Baseline(
                    baseline: -50,
                    baselineType: TextBaseline.alphabetic,
                    child:Text("hello world ", style: TextStyle(color: Colors.green, fontSize: 15),),
                  ),
```
>icon dưới góc bên trái của màn hình : floatingActionButton
example:
```
floatingActionButton: FloatingActionButton(
        onPressed: () {
          debugPrint("floating action button");
        },
        child: Icon(Icons.add),
      
      ),
```

bottomNavigationBar
example: 
```
bottomNavigationBar: NavigationBar(destinations: [
        NavigationDestination(icon: Icon(Icons.home), label: "Home"),
        NavigationDestination(icon: Icon(Icons.person), label: "Person"),
      ]),

```
```
Scaffold (dịch ra là cái khung, là đại diện cho cả cái khung màn hình ấy). Material sẽ không hoạt động nếu không có Scaffold. Như vậy sau MaterialApp, thì widget kế tiếp nên là 1 Scaffold rồi mới đến widget Text.
Vì Scaffold là nguyên cái khung màn hình nó ôm luôn cái status bar bên trên nên tất nhiên cái text sẽ được hiển thị ở vị trí đó. Bây giờ ta muốn cái text đó phải được hiển thị trong vùng hiển thị cho phép (gọi là vùng an toàn đi) thì sử dụng widget SafeArea wrap widget Scaffold lại và run lại project.

nếu dùng AppBar thì không cần dùng SafeArea 
```

>remove icon debug in app flutter: debugShowCheckedModeBanner: false,


>tắt nút tự động back lại trang: 
```
 automaticallyImplyLeading: false,
```

>để có thể back ra bất kì trang nào treo ý thì dùng

```
leading: IconButton(onPressed: () {
          Navigator.of(context).pop(); // pop nghĩa là xoá page đó di
        },
icon: Icon(Icons.arrow_back_ios),
```


>để sử dụng image local thì vào file pubspec.yaml tìm từ :”assets: “ mở comment và chỉnh sua

```
divider: tạo 1 dải phân cách nhỏ
đi chung vs divider là sizedbox : dùng để thay đổi kích thước của divider
const SizedBox(height: 20),
        const Divider(
          color: Colors.black,
        ),
```

>full kích thước chiều rộng ta dùng double.infinity bên trong container

>cho hàng đó căn giữa màn hình chính dùng mainAxisAlignment 
ví dụ , cho hàng nằm giữa màn hình chính và khoản cách giữa các widget 
```
Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
            Icon(Icons.local_fire_department),
            Text("Row Widget"),
            Icon(Icons.local_fire_department),
          ],)
```


```
Gesture (cử chỉ) là cách mà người dùng tương tác với các thiết bị di động. Có rất nhiều cử chỉ khác nhau như vuốt, chạm, lắc... Gesture  trong Flutter giúp ta xử lý các cử chỉ của người dùng, tương tự như việc bắt sự kiện trong Android.
Một số cử chỉ được sử dụng rộng rãi:
* Tap − Chạm vào bề mặt thiết bị bằng đầu ngón tay trong thời gian ngắn sau đỏ thả ngón tay ra ngay
* Double Tap − Tap 2 lần trong thời gian ngắn
* Drag − Chạm vào bề mặt của thiết bị bằng đầu ngón tay và sau đó di chuyển đầu ngón tay một cách ổn định và cuối cùng thả ngón tay ra.
* Flick − Tương tự như drag nhưng thực hiện nhanh hơn.
* Pinch − Chụm bề mặt của thiết bị bằng hai ngón tay
* Spread/Zoom − Ngược lại với Pinch.
* Panning − Chạm vào bề mặt của thiết bị bằng đầu ngón tay và di chuyển nó theo bất kỳ hướng nào mà không nhả đầu ngón tay.
* 
https://vncoder.vn/bai-hoc/gesture-trong-flutter-230
Flutter cung cấp một sự hỗ trợ tuyết vời để xử lý tất cả các loại cử chỉ thông qua một tiện ích duy nhất GestureDetector.  Để xác định các cử chỉ tác động lên một widget, ta chỉ cần đặt widget đó bên trong GestureDetector widget. GestureDetector sẽ bắt các cử chỉ và gửi nhiều sự kiện dựa trên cử chỉ đó.
```

>để có thể bắt sự kiện 1 hàng của Gesture ta dùng  behavior
```
vd: behavior:HitTestBehavior.opaque,
```

>để thay đổi màu sắc của Elevatedbutton : 
```
style: ElevatedButton.styleFrom(
                primary: isSwich ? Colors.red[300] : Colors.green),
```

>nếu giá trị có thể null thì khi khai báo ta khai báo như sau: bool? newBool

thêm 1 hành button or icon trên appBar ta dùng như sau
```
appBar: AppBar(
        title: Text("Learn Flutter"),
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
        actions: [IconButton(onPressed: (){
          debugPrint("click actions info");
        }, icon: const Icon(Icons.info_outline))],
      ),
```


* ListTile: Tạo widget với 3 dang text, có leading và trailing icon trong 1 dòng. (nghĩa là icon nằm ở đầu hàng và icon nằm ở cuối hàng
* trong listTile còn có onTap để bắt sự lkiện