import 'package:http/http.dart' as http;

void test_req() async {
  var url = Uri.parse("https://timber-d688b-default-rtdb.firebaseio.com/messages.json");
  var response = await http.get(url);
  print('Response status: ${response.statusCode}');
  print('Response body: ${response.body}');
}

void main() {
  test_req();
}
