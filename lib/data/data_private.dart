import 'package:mediate/models/models.dart';

// nature audios refrence
final audio1Nature = AudioCategory(
    'https://i.ibb.co/K0chJXY/osman-rana-GXEZu-Wo5m4-I-unsplash.jpg',
    'Rainy Night',
    50,
    'Audio',
    'https://od.lk/s/NjVfNjM4ODEwNTdf/30%20MINUTES%20Gentle%20Rain%20at%20Night.mp3');
final audio2Nature = AudioCategory(
    'https://i.ibb.co/B3s4Fjt/andy-holmes-Txkis-Eu-Us7w-unsplash.jpg',
    'Birds singing',
    10,
    'Audio',
    'https://od.lk/s/NjVfNjM5MzE4Njlf/ASMR%20Ambience_%20Birds%20Singing%20In%20Greentea%20Farm%20_%20Calming%20Sound%20Of%20Jeju%20Island.mp3');
final audio3Nature = AudioCategory(
    'https://i.ibb.co/JxKrHLd/dylan-shaw-XNOGg2-Ms-Gpk-unsplash.jpg',
    'Ambience',
    15,
    'Audio',
    'https://od.lk/s/NjVfNjQwMzI0Njhf/Y2Mate.is%20-%20Skyrim%20-%20Music%20%26%20Ambience%20-%20Night-aK4JSwhdcdE-128k-1659362187144.mp3');
final audio4Nature = AudioCategory(
    'https://i.ibb.co/tJG9PMk/saffu-A7-Rz-Cegedb4-unsplash.jpg',
    'Mountain',
    80,
    'Peace',
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
    playlistDuration: 4);

// starting refrence for audio study
final List<AudioCategory> study = [
  audio1Study,
  audio2Study,
  audio3Study,
  audio1Study,
];

final audio1Study = AudioCategory(
    'https://i.ibb.co/8mMMgC7/john-mark-smith-F-c-HIM0-Kcy4-unsplash.jpg',
    'Turning pages',
    50,
    'Study',
    'https://od.lk/s/NjVfNjQwMzY0MzBf/ASMR%20Satisfying%20Writing%2C%20Page%20Turning%2C%20Keyboard%20Typing%20%EC%9D%B4%EA%B1%B4%20%EC%88%98%EB%A9%B4%EC%A0%9C%20%EC%98%81%EC%83%81%EC%9E%85%EB%8B%88%EB%8B%A4.mp3');
final audio2Study = AudioCategory(
    'https://i.ibb.co/XxV2F1Y/artemis-faul-CUbr8ci2-HUE-unsplash.jpg',
    'Synthwave',
    8,
    'Study',
    'https://od.lk/s/NjVfNjQwMzY0NDJf/synthwave.mp3');
final audio3Study = AudioCategory(
    'https://i.ibb.co/hKYLP5Y/ben-blennerhassett-u1u-Swk3b-CQ-unsplash.jpg',
    'Lofi-Audio',
    10,
    'Study',
    'https://od.lk/s/NjVfNjQwMzU0MDhf/lofi-study-112191.mp3');

final List<AudioListCategory> audioCategoryLists = [
  audioListNtureCategory,
  audioListCategoryStudy
];
final audioListNtureCategory = AudioListCategory(
    coverListImage:
        'https://i.ibb.co/GH4zjdj/sapan-patel-i9-Q9bc-Wgf-E-unsplash.jpg',
    audioCatList: audiosNature,
    coverListName: 'Nature',
    playlistDuration: 58);
final audioListCategoryStudy = AudioListCategory(
    coverListImage:
        'https://i.ibb.co/Qp62Dnx/andrik-langfield-1-YQi-Oijio8-unsplash.jpg',
    audioCatList: study,
    coverListName: 'Study',
    playlistDuration: 3);

// random list

final randomList = [
  audio1Nature,
  audio3Study,
  audio2Nature,
  audio4Nature,
  audio3Nature,
  audio2Study,
];
