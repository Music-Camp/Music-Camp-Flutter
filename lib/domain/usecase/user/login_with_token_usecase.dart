import 'package:kakao_flutter_sdk_user/kakao_flutter_sdk_user.dart';
import 'package:music_camp/core/utils/logger.dart';
import 'package:music_camp/domain/repository/user_repository.dart';
import 'package:music_camp/domain/usecase/base/remote.usecase.dart';

import '../../../core/utils/exception/common_exception.dart';

class LoginWithTokenUsecase extends RemoteUsecase<UserRepository>{
  @override
  Future call(UserRepository repository) async {
    // Auth메ㅑhasToken
    // 현재 기기에 이전에 로그인한 이력이 있는지 확인하는 메서드
    if(await AuthApi.instance.hasToken()){
      try{
        await UserApi.instance.accessTokenInfo();
      }catch(error){
        CustomLogger.logger.e("${error.toString()}");
        throw CommonException.setError(error);
      }
    }else{
      return null;
    }
    // 내 정보 리턴
    return await UserApi.instance.me();
  }
}