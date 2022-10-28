//deferred cho phép 1 ứng dụng web tải thư viện theo yêu cầu và khi thư viện cần thiết
///lợi ích:
///giảm thời gian khởi động ban đầu của ứng dụng web
///để tải các chức năng hiếm khi được sử dụng
///chỉ có dart compile Js mới hỗ trợ deferred loading(web app), VM không hỗ trợ
import 'dart:developer' deferred as deverloper;
