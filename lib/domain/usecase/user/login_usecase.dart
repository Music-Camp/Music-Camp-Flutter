import 'package:flutter/services.dart';
import 'package:music_camp/domain/repository/user_repository.dart';

import '../../../core/utils/exception/common_exception.dart';
import '../../../core/utils/logger.dart';
import '../../model/user.dart';
import '../base/remote.usecase.dart';

import 'package:kakao_flutter_sdk_user/kakao_flutter_sdk_user.dart';

class LoginUsecase extends RemoteUsecase<UserRepository>{
  @override
  Future<User?> call(UserRepository repository) async{

    // 카카오톡 설치 여부부타 확인
    if(await isKakaoTalkInstalled()){
      try{
        await UserApi.instance.loginWithKakaoTalk();
      }catch(error){
        if(error is KakaoAuthException && (error.message?.contains('Cancelled')?? false)){
          return null;
        }

        await _loginWithKakaoAccount();
      }

    }else{
      // 카카오톡이 설치되어 있지 않은 경우
      await _loginWithKakaoAccount();
    }
    // 로그인된 내 정보 리턴
    return UserApi.instance.me();
  }

  Future<void> _loginWithKakaoAccount() async{
    try{
      await UserApi.instance.loginWithKakaoAccount();
    }catch(error){
      if(error is PlatformException && error.code == "CANCELLED"){
        return null;
      }

      CustomLogger.logger.e("${error.toString()}");
      throw CommonException.setError(error);
    }
  }
}