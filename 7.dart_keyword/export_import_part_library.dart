//1 tính năng = 1 library
// mọi file dart là 1 library ngay cả khi nó k ở trong
// cách tạo thư viện riêng
library trigonometric_functions;

//export(xuất khẩu) : mình có thể export hết part vào 1 file sau đó cái file nào cần giùm thì mình import vào file vào
//file.dart
//export "file1";
//export "file2";
//export "file3";
//export "file4";
//export "file5";
//filekhac.dart
//import "file.dart"
//z là mình có hết tất cả những thứ của file1,2,3,4,5

import 'dart:math';

// import(nhập khẩu) có thể dùng để import thư viện hoặc các file bên ngoài vào trong file hiện tại
import 'dart:async';
import 'assert.dart';

// part với part of đi với nhau, ở file gốc ta sẽ xài part of "tên file muốn share" rồi ở file muốn share ta dùng part "file gốc" để import nó vào
//part of 'abstract_implements.dart'; // không thể xài chung vs library, import, export
