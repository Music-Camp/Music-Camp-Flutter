import 'package:kakao_flutter_sdk_user/kakao_flutter_sdk_user.dart';
import 'package:music_camp/domain/repository/user_repository.dart';
import 'package:music_camp/domain/usecase/base/remote.usecase.dart';

import '../../../core/utils/exception/common_exception.dart';
import '../../../core/utils/logger.dart';

class LogoutUsecase extends RemoteUsecase<UserRepository>{
  @override
  Future call(UserRepository repository) async {
    try{
      await UserApi.instance.logout();
    }catch(error){
      CustomLogger.logger.e("${error.toString()}");
      throw CommonException.setError(error);
    }
  }

}