import 'package:ChatterBox/models/contacts.dart';

class ChatModel {
  final bool isTyping;
  final String lastMessage;
  final String lastMessageTime;
  final ContactModel contact;

  ChatModel(
      {this.isTyping, this.lastMessage, this.lastMessageTime, this.contact});

  static List<ChatModel> list = [
    ChatModel(
      isTyping: true,
      lastMessage: "Hi am almost done",
      lastMessageTime: "2d",
      contact: ContactModel(name: "Asanda Ndimande"),
    ),
    ChatModel(
      isTyping: false,
      lastMessage: "Ohh Hi there, Can you please finish the App",
      lastMessageTime: "2d",
      contact: ContactModel(name: "Tharollo Nkosi"),
    ),
    ChatModel(
      isTyping: false,
      lastMessage: "Where have you've been the past few days",
      lastMessageTime: "2d",
      contact: ContactModel(name: "Destiny Gumede"),
    ),
  ];
}
