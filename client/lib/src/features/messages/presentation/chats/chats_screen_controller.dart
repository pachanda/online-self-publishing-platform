
import 'dart:async';

import 'package:client/src/common/log.dart';
import 'package:client/src/common/pagination/pagination_controller.dart';
import 'package:client/src/features/messages/data/chat_repository.dart';
import 'package:client/src/features/messages/domain/chat.dart';
import 'package:client/src/features/messages/presentation/chats/chats_screen_state.dart';
import 'package:client/src/shared/socket.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:socket_io_client/socket_io_client.dart';

import '../../../../common/socket_stream.dart';
import '../../domain/message.dart';

part 'chats_screen_controller.g.dart';

@riverpod
class ChatsScreenController extends _$ChatsScreenController 
    with PaginationController<Chat>{
  ChatRepository get chatRepo => ref.watch(chatRepositoryProvider);

  NextMessageHandler? nextMessageHandeler;
  
  @override
  FutureOr<ChatsScreenState> build() async {
    printInfo('on ChatsScreenController build');
    nextMessageHandeler = NextMessageHandler(_populateSomeChat);
    ref.onDispose(() async {
      printInfo("on ChatsScreenController dispose nextMessageHandeler = ($nextMessageHandeler)");
      await nextMessageHandeler?.dispose();
    });

    ref.onCancel(() {
      printInfo('on ChatsScreenController cancel');
    });
    ref.onResume(() {
      printInfo('on ChatsScreenController resume');
    });
    final chats = await getItems(0);
    return ChatsScreenState(chats: chats);
  }

  void _populateSomeChat(Message nextMessage) {
    Chat chatToUpdate = state.value!.chats.firstWhere(
      (chat) => [nextMessage.from.id, nextMessage.to]
        .contains(chat.other.id)
    );

    Chat newChat = chatToUpdate.copyWith(lastMessage: nextMessage.content);
    
    state = AsyncData(state.value!.copyWith(
      chats: List<Chat>.from(state.value!.chats)..replaceRange(
        state.value!.chats.indexOf(chatToUpdate),
        state.value!.chats.indexOf(chatToUpdate) + 1,
        [newChat]
      )
    ));
  }
  
  @override
  List<Chat> get listState => state.value!.chats;

  @override 
  set listState(List<Chat> newChats) => 
      state = AsyncData(state.value!.copyWith(chats: newChats));
  
  @override
  PaginationItemsCallback<Chat> get getItems => (int from) {
    return chatRepo.getChats(from);
  };
}