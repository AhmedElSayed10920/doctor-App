import 'package:doctor/core/services/api_error_handling.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'api_results.freezed.dart';

@freezed
abstract class ApiResults<T> with _$ApiResults<T> {
  const factory ApiResults.success(T data) = Success<T>;
  const factory ApiResults.failure(ErrorHandler errorHandler) = Faillure<T>;
}
