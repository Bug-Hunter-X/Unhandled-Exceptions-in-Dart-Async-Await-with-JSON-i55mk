# Unhandled Exceptions in Dart Async/Await with JSON

This repository demonstrates a common error in Dart applications involving asynchronous operations and JSON data processing. The `bug.dart` file contains code that fetches data from a URL, decodes it as JSON, and then attempts to access a specific key.  However, it lacks proper error handling for cases where the JSON decoding fails or the requested key is not present.  The improved solution is shown in `bugSolution.dart`.

## Bug
The original code fails to handle potential exceptions during `jsonDecode` and accessing elements from the decoded JSON. This can lead to unexpected crashes or incorrect behavior if the server response is malformed or doesn't contain the expected keys.

## Solution
The improved code includes comprehensive error handling to address various failure scenarios:
* **JSON Decoding:** It includes a try-catch block to handle exceptions during `jsonDecode`.
* **Key Existence:** It checks for the key's presence before accessing it, preventing runtime errors if the key doesn't exist.
* **HTTP Errors:** It checks the HTTP status code and throws an exception if the request fails.
* **Specific Exception Handling:** More specific error handling provides better insights into the cause of failures.