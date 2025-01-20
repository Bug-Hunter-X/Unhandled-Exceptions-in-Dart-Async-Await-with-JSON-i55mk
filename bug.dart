```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://example.com/data'));
    if (response.statusCode == 200) {
      // Process the data here.  This is where the error might occur if you don't handle potential exceptions from jsonDecode
      final jsonData = jsonDecode(response.body);
      print(jsonData['someKey']); //Example access, might throw error if 'someKey' isn't present
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e'); //This is a general catch all, more specific error handling could be implemented
  }
}
```