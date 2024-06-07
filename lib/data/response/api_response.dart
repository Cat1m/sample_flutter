// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:sample_flutter/data/response/status.dart';

class ApiResponse<T> {
  Status? status;
  T? data;
  String? message;

  ApiResponse({
    this.status,
    this.message,
    this.data,
  });

  ApiResponse.loading() : status = Status.loading;

  ApiResponse.completed(this.data) : status = Status.completed;

  ApiResponse.error(this.message) : status = Status.error;

  @override
  String toString() {
    return "Status : $status \n Message : $message \n Data: $data";
  }
}
