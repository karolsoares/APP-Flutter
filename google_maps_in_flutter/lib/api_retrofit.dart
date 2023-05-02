import 'package:json_annotation/json_annotation.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';
import 'pages/cadastro.page.dart' as cadastros;
import 'models/user_models.dart';

part 'api_retrofit.g.dart';

@RestApi(baseUrl: "https://644d66e757f12a1d3dde9065.mockapi.io/api/")
abstract class RestClient {
  //factory constroi e retorna uma instância
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

<<<<<<< Updated upstream
  @GET("/tasks")
  Future<List<Task>> getTasks();
}

@JsonSerializable()
class Task {
  String? id;
  String? name;
  String? avatar;
  String? createdAt;

  Task({this.id, this.name, this.avatar, this.createdAt});

  factory Task.fromJson(Map<String, dynamic> json) => _$TaskFromJson(json);
  Map<String, dynamic> toJson() => _$TaskToJson(this);
=======
  @GET('/USERS')
  //vou listar todos os usuarios da nossa API que se encontram na class UserModel
  Future<List<UserModel>> findAll();

  //@GET('/USERS/{id}')
  //vou listar todos os usuarios da nossa API que se encontram na class UserModel
  //Future<UserModel> findbyId(@Path('id') String id);

  @POST('/USERS')
  Future<void> save(@Body() UserModel user);
>>>>>>> Stashed changes
}
