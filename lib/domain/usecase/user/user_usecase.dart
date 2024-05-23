import 'package:music_camp/domain/repository/user_repository.dart';

import '../base/remote.usecase.dart';

class UserUsecase{
  final UserRepository _userRepository;

  UserUsecase(this._userRepository);

  Future execute<T>({required RemoteUsecase usecase}) async {
    return await usecase(_userRepository);
  }
}