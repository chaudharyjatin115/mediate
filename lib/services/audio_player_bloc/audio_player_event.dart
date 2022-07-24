import 'package:flutter/foundation.dart' show immutable;

@immutable
abstract class AudioPlayerEvent {}

@immutable
class AudioPlayEventRemote implements AudioPlayerEvent {
  final String audioUrl;

  const AudioPlayEventRemote({
    required this.audioUrl,
  });
}

@immutable
class AudioEventStop implements AudioPlayerEvent {
  final String audioUrl;

  const AudioEventStop(this.audioUrl);
}

class AudioPlayerInitialEvent implements AudioPlayerEvent {}
