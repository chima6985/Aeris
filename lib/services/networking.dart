import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:developer';

class NetworkHelper{
NetworkHelper({required this.Url});

final String Url;

Future <dynamic> getData() async {
  http.Response response = await http.get(Uri.parse(Url));

    if (response.statusCode == 200) {
      String data = response.body;

      var decodedData = jsonDecode(data);
      return decodedData;
      } else {
      log(response.body.toString());
    }
}
}



  