import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';
import 'package:music_camp/domain/repository/user_repository.dart';


@Singleton(as: UserRepository)
class UserRepositoryImpl implements UserRepository{
  static const String url = 'http://52.78.37.57:8080/music/user';

  
}