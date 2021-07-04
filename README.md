# Ứng dụng The Coffee House

> Ứng dụng hỗ trợ khách hàng đặt thức uống và cung cấp khả năng quản lý cửa hàng cho quản trị viên, có thể chạy được trên 2 nền tảng Android và IOS.

# Content
---
## Menu
1. [Introduction](#introduction)
    1. [Chức năng chung](#general)
        1. [Đăng nhập/ Đăng ký](#Sign-in)
    1. [Chức năng cho người dùng](#user)
        1.  [Giao diện trang home](#home-screen)
        1.  [Giao diện trang order](#order-screen)
            1. Xem danh mục sản phẩm
            1. Xem thông tin sản phẩm
            1. Thông tin đơn hàng
        1. [Giao diện trang cửa hàng](#stores-screen)
            1. Danh sách cửa hàng
            1. Xem thông tin cửa hàng
            1. Google map các cửa hàng
        1. [Giao diện trang ưu đãi](#reward-screen)
            1. Thông tin thành viên
            1. Danh sách các ưu đãi
        1. [Giao diện trang khác](#others-screen)
            1. Lịch sử đơn hàng
            1. Thông tin chi tiết đơn hàng
            1. Liên hệ
            1. Thông tin cá nhân
    
    1. [Chức năng cho quản trị viên](#admin)
        1. Giao diện trang danh sách đơn hàng
        1. Giao diện trang danh sách ưu đãi
        1. Giao diện trang danh sách người dùng
        1. Giao diện trang danh sách sản phẩm
        1. Giao diện trang danh sách cửa hàng
        1. Giao diện trang danh sách danh mục sản phẩm

1. [System requirement](#system-requirement)
1. [Installation](#installation)
1. [Package Dependencies](#dependencies)
1. [Known Issues](#know-issues)
1. [License](#license)

<!-- Authentication Screens -->
## Introduction

### General
- ***Sign in***
- ***Sign out***

<img src="/images/login.png" width="200" height="440">
<img src="/images/signup.png" width="200" height=440>

### Customer
#### Home Screen
- Giao diện chính
- Thông báo mới

<img src="/images/home.png" width="200" height=440>
<img src="/images/notification.png" width="200" height=440>


#### Order screen
- Order overview screen
- Product detail screen
- Confirmation order screen

<img src="/images/order-screen.png" width="160" height=350>
<img src="/images/product-detail.png" width="160" height=350>
<img src="/images/order.png" width="160" height=350>

#### Stores Screen
- Stores of brands
- Store detail
- Embedded  Google map

<img src="/images/stores.png" width="160" height=360 >
<img src="/images/store-detail.png" width="160" height=350 >
<img src="/images/map.png" width="160" height=350 >

#### Reward Screen
- Thông tin khách hàng
- Danh sách một số phiếu ưu đãi
- Danh sách tât cả phiếu ưu đãi

<img src="/images/reward.png" width="160" height=350 >
<img src="/images/promotion.png" width="160" height=360 >
<img src="/images/promotion1.png" width="160" height=350 >

### Others Screen
- Giao diện trang khác
- Thông tin liên lạc

<img src="/images/others.png" width="220" height=440 >
<img src="/images/contact.png" width="220" height=440 >

- Giao diện thông tin người dùng
- Giao diện bottom sheet đổi mật khẩu

<img src="/images/user-info.png" width="220" height=440 >
<img src="/images/change-password.png" width="220" height=440 >

- Giao diện trang thông tin chi tiết hoá đơn
- Giao diện xem và chỉnh sửa thông tin người dùng

<img src="/images/order-detail.png" width="220" height=440 >
<img src="/images/order-detail2.png" width="220" height=440 >

### Admin
Vì các loại danh sách này tương tự như nên chỉ đưa ra một số danh sách tượng trưng  và đặc biệt

#### Danh sách người dùng
<p align="center"><img src="/images/admin-users.png" width="220" height=440 ></p>

#### Danh sách thông báo
<p align="center"><img src="/images/admin-notifications.png" width="220" height=440 ></p>

#### Danh sách hoá đơn
- Cho phép người dùng filter theo hoá đơn đã giao hoặc chưa giao

<p align="center"><img src="/images/admin-orders.png" width="220" height=440 ></p>


#### System Requirement

- Đối với môi trường **Android**
    + Sử dụng SDK 26 tối thiểu
    + Sử dụng gradle phiên bản  4.3.2  trở lên

- Đối với môi trường **IOS**
    + Sử dụng phiên bản IOS 10.0 tối thiểu
    + Sử dụng cocoapod phiên bản mới nhất

- **Flutter SDK** phiên bản 2.10 trở lên




#### Installation
```
git clone https://github.com/thinhlh/DoAnMobileProgramming.git
cd DoAnMobileProgramming
>
flutter pub get
flutter build 
flutter run
```

#### Dependencies
You can check for all dependencies at [pubspec.yaml](/the_coffee_house/pubspec.yaml)
- [FlutterFire](https://firebase.flutter.dev/)
    1. Firebase Authentication
    1. Cloud Firestore
    1. Firebase Storage
    1. Firebase Cloud Messaging
    1. Firebase Core
    1. Firebase Analytics
- [Google And Facebook Sign In](https://firebase.flutter.dev/docs/auth/social/)

- [Google Map SDK](https://pub.dev/packages/google_maps_flutter)

#### Known issues
##### Android
- Google Chrome crash on Android emulator, result in failed in app Web View

##### IOS
- [Image Picker crash on  M1 simulator](https://github.com/flutter/flutter/issues/71943)add
- [Making a phone call or mailling is disable on IOS emulator](https://pub.dev/packages/url_launcher)
```
Note: URL schemes are only supported if there are apps installed on the device that can support them. For example, iOS simulators don't have a default email or phone apps installed, so can't open tel: or mailto: links.
```
- Firebase Mesaging on IOS is disabled because of lacking budget for Apple Developer account.

#### [License](LICENSE)