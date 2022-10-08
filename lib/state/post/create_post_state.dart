part of 'create_post_cubit.dart';

@freezed
class CreatePostState with _$CreatePostState {
  const CreatePostState._();

  const factory CreatePostState({
    String? title,
    String? content,
    String? username,
    DateTime? createdAt,
    String? code,
    String? codeResult,
    String? parentId,
    Either<Failure, Unit>? failureOrSuccessOption,
    required ContentType contentType,
    required String language,
    required bool isLoading,
    required bool isCompiling,
  }) = _CreatePostState;

  factory CreatePostState.initial() => CreatePostState(
        username: 'username',
        createdAt: DateTime.now(),
        isLoading: false,
        isCompiling: false,
        language: 'PYTHON',
        contentType: ContentType.publication,
      );
}
