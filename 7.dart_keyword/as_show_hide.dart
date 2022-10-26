//as dùng để chỉ định tiền tố của cái mình import vào
import 'abstract_implements.dart' as abs;
// nếu mình chỉ muốn xài 1 phần của thư viện thì xài show và hide
//show thì show ra 1 cái còn lại hide tất cả những cái còn lại
// ignore: unused_import
import 'dart:math' show Random;
//hide thì ẩn 1 cái còn lại show hết tất cả những cái còn lại
// ignore: unused_import
import 'dart:async' hide AsyncError;

void main(List<String> args) {
  abs.Winter winter = abs.Winter();
  winter.doHomeWork();
}
