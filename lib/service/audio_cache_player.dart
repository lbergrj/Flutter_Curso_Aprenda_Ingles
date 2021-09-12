
import 'package:audioplayers/audio_cache.dart';

class AudioChachePlayer{

  static AudioCache _audioCache = AudioCache(prefix: "audios/");

  static tocar (String nomeAudio) {
    _audioCache.play(nomeAudio + ".mp3") ;
  }

}