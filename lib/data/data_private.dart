import 'package:mediate/models/models.dart';

// nature audios refrence
final audio1Nature = AudioCategory(
    'https://i.ibb.co/K0chJXY/osman-rana-GXEZu-Wo5m4-I-unsplash.jpg',
    'Rainy Night',
    50,
    'Nature',
    'https://od.lk/s/NjVfNjM4ODEwNTdf/30%20MINUTES%20Gentle%20Rain%20at%20Night.mp3');
final audio2Nature = AudioCategory(
    'https://i.ibb.co/B3s4Fjt/andy-holmes-Txkis-Eu-Us7w-unsplash.jpg',
    'Birds singing',
    10,
    'Nature',
    'https://od.lk/s/NjVfNjM5MzE4Njlf/ASMR%20Ambience_%20Birds%20Singing%20In%20Greentea%20Farm%20_%20Calming%20Sound%20Of%20Jeju%20Island.mp3');
final audio3Nature = AudioCategory(
    'https://i.ibb.co/JxKrHLd/dylan-shaw-XNOGg2-Ms-Gpk-unsplash.jpg',
    'Ambience',
    15,
    'Nature',
    'https://od.lk/s/NjVfNjQwMzI0Njhf/Y2Mate.is%20-%20Skyrim%20-%20Music%20%26%20Ambience%20-%20Night-aK4JSwhdcdE-128k-1659362187144.mp3');
final audio4Nature = AudioCategory(
    'https://i.ibb.co/tJG9PMk/saffu-A7-Rz-Cegedb4-unsplash.jpg',
    'Mountain',
    80,
    'Nature',
    'https://od.lk/s/NjVfNjQwMzUyNTdf/Y2Mate.is%20-%20peace.-S-ztoGpA7a4-128k-1659370469729.mp3');

// a list consisting audiocategory of nature
final List<AudioCategory> audiosNature = [
  audio1Nature,
  audio2Nature,
  audio3Nature,
  audio4Nature,
];
final List<AudioCategory> audios = [];

// study concentration music
//
final nature = AudioListCategory(
    coverListImage: 'assets/images/cover/cover_evening.jpg',
    audioCatList: audiosNature,
    coverListName: 'Nature',
    playlistDuration: 4,
    playlistInfo:
        'this is largely focused on the sounds that are produced in nature they help you calm and relaxed meanwhile making you fall asleep');

// starting refrence for audio study

final audio2Synthwave = AudioCategory(
    'https://i.ibb.co/XxV2F1Y/artemis-faul-CUbr8ci2-HUE-unsplash.jpg',
    '80vibes',
    8,
    'SynthWave',
    'https://od.lk/s/NjVfNjQwMzY0NDJf/synthwave.mp3');
final audio1SynthWave = AudioCategory(
    'https://i.ibb.co/tHTpfbT/agnis-leznins-DXa7-nm-PKSk-unsplash.jpg',
    'ChillSynth',
    48,
    'Synthwave',
    'https://od.lk/s/NjVfNjQwNTAwMjVf/Solitude%20-%203%20a.m%20-%20Electronic%2C%20Synthwave%20%26%20Chillsynth%20-.mp3');
final List<AudioCategory> synthWave = [
  audio2Synthwave,
];
final List<AudioCategory> study = [
  audio1Study,
  audio3Study,
  audio1Study,
];

final audio1Study = AudioCategory(
    'https://i.ibb.co/8mMMgC7/john-mark-smith-F-c-HIM0-Kcy4-unsplash.jpg',
    'Turning pages',
    50,
    'Study',
    'https://od.lk/s/NjVfNjQwMzY0MzBf/ASMR%20Satisfying%20Writing%2C%20Page%20Turning%2C%20Keyboard%20Typing%20%EC%9D%B4%EA%B1%B4%20%EC%88%98%EB%A9%B4%EC%A0%9C%20%EC%98%81%EC%83%81%EC%9E%85%EB%8B%88%EB%8B%A4.mp3');

final audio3Study = AudioCategory(
    'https://i.ibb.co/hKYLP5Y/ben-blennerhassett-u1u-Swk3b-CQ-unsplash.jpg',
    'Lofi-Audio',
    10,
    'Study',
    'https://od.lk/s/NjVfNjQwMzU0MDhf/lofi-study-112191.mp3');

final List<AudioListCategory> audioCategoryLists = [
  audioListNtureCategory,
  audioListCategoryStudy,
  audioSynthwaveCategory
];
final audioListNtureCategory = AudioListCategory(
    coverListImage:
        'https://i.ibb.co/GH4zjdj/sapan-patel-i9-Q9bc-Wgf-E-unsplash.jpg',
    audioCatList: audiosNature,
    coverListName: 'Nature',
    playlistDuration: 58,
    playlistInfo:
        'this is largely focused on the sounds that are produced in nature they help you calm and relaxed meanwhile making you fall asleep');
final audioListCategoryStudy = AudioListCategory(
    coverListImage:
        'https://i.ibb.co/Qp62Dnx/andrik-langfield-1-YQi-Oijio8-unsplash.jpg',
    audioCatList: study,
    coverListName: 'Study',
    playlistDuration: 3,
    playlistInfo:
        'This Playlist is focused on  making you focused on studies and coding etc with the power of ASMR');

final audioSynthwaveCategory = AudioListCategory(
    coverListImage:
        'https://i.ibb.co/TM8y7tM/antoine-j-r3-Xv-SBEQQLo-unsplash.jpg',
    audioCatList: synthWave,
    coverListName: 'Synthwave-80s',
    playlistDuration: 120,
    playlistInfo: 'the soothing music of 80s and 90s');

// random list

final randomList = [
  audio1Nature,
  audio3Study,
  audio2Nature,
  audio1SynthWave,
  audio4Nature,
  audio3Nature,
  audio2Synthwave,
];
