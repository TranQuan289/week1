// required là bắt buộc cần nhập vào
void rq({required a, required b}) => a + b;
void main(List<String> args) {
  rq(a: 4, b: 3); // bắt buộc nhập cả tên a,b và đối số
}
