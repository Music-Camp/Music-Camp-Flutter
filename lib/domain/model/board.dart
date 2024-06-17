// To parse this JSON data, do
//
//     final boardResponse = boardResponseFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

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

@freezed
class Board{
  int postId;
  int userId;
  // 닉네임 타입 확인
  String nickName;
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
    // 닉네임에 대한 수정 필요
    nickName: json["nickName"],
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
    "nickName": nickName,
    "title": title,
    "content": content,
    "imageURL": imageUrl,
    "likeNum": likeNum,
    "createdAt": createdAt.toIso8601String(),
    "updatedAt": updatedAt.toIso8601String(),
  };
}

