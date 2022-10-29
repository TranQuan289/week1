// Typedefs kiểu như là 1 bí danh của 1 cái gì đó
typedef thisString = String;
thisString Intern = "Đây là 1 kiểu chuỗi";
typedef thisList = List;
thisList Winter = [1, 2, 3, 4, 5]; // đây là kiểu list
// một Typedefs có thể chứa các tham số
typedef ListMapper<X> = Map<X, List<X>>;
Map<String, List<String>> m1 = {}; // như này thì dài dòng
ListMapper<String> m2 = {}; // xài typedef cho nó ngắn