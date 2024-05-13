// To parse this JSON data, do
//
//     final boardResponse = boardResponseFromJson(jsonString);

import 'dart:convert';

BoardResponse boardResponseFromJson(String str) => BoardResponse.fromJson(json.decode(str));

String boardResponseToJson(BoardResponse data) => json.encode(data.toJson());

class BoardResponse {
  bool isSuccess;
  int code;
  String message;
  List<Board> result;

  BoardResponse({
    required this.isSuccess,
    required this.code,
    required this.message,
    required this.result,
  });

  factory BoardResponse.fromJson(Map<String, dynamic> json) => BoardResponse(
    isSuccess: json["isSuccess"],
    code: json["code"],
    message: json["message"],
    result: List<Board>.from(json["result"].map((x) => Board.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "isSuccess": isSuccess,
    "code": code,
    "message": message,
    "result": List<dynamic>.from(result.map((x) => x.toJson())),
  };
}

class Board {
  int postId;
  int userId;
  NickName nickName;
  String title;
  String content;
  String imageUrl;
  int likeNum;
  DateTime createdAt;
  DateTime updatedAt;

  Board({
    required this.postId,
    required this.userId,
    required this.nickName,
    required this.title,
    required this.content,
    required this.imageUrl,
    required this.likeNum,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Board.fromJson(Map<String, dynamic> json) => Board(
    postId: json["postId"],
    userId: json["userId"],
    nickName: nickNameValues.map[json["nickName"]]!,
    title: json["title"],
    content: json["content"],
    imageUrl: json["imageURL"],
    likeNum: json["likeNum"],
    createdAt: DateTime.parse(json["createdAt"]),
    updatedAt: DateTime.parse(json["updatedAt"]),
  );

  Map<String, dynamic> toJson() => {
    "postId": postId,
    "userId": userId,
    "nickName": nickNameValues.reverse[nickName],
    "title": title,
    "content": content,
    "imageURL": imageUrl,
    "likeNum": likeNum,
    "createdAt": createdAt.toIso8601String(),
    "updatedAt": updatedAt.toIso8601String(),
  };
}

enum NickName {
  AARON,
  BARON
}

final nickNameValues = EnumValues({
  "aaron": NickName.AARON,
  "baron": NickName.BARON
});

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}