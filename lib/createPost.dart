import "package:http/http.dart" as http;
import "dart:convert";


Future<http.Response> createPost(String url, {Map<String, String>? headers, body}) async {
  final msg = jsonEncode(body);
  return await http.post(
    Uri.parse(url),
    headers: {"Content-Type": "application/json"},
    body: msg,
  );
}

Future<http.Response> createGet(String url, {Map<String, String>? headers}) async {
  return await http.get(
    Uri.parse(url),
    headers: headers
  );
}