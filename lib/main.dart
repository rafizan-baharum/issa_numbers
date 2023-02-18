import 'dart:typed_data';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_image_map/flutter_image_map.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ImageMapExample();
  }
}

class ImageMapExample extends State<MyApp> {
  AudioPlayer audioPlayer = AudioPlayer();

  static List<AssetSource> assetSources = [
    AssetSource('audio/1.mp3'),
    AssetSource('audio/2.mp3'),
    AssetSource('audio/3.mp3'),
    AssetSource('audio/4.mp3'),
    AssetSource('audio/5.mp3'),
    AssetSource('audio/6.mp3'),
    AssetSource('audio/7.mp3'),
    AssetSource('audio/8.mp3'),
    AssetSource('audio/9.mp3'),
    AssetSource('audio/10.mp3'),
    AssetSource('audio/11.mp3'),
    AssetSource('audio/12.mp3'),
    AssetSource('audio/13.mp3'),
    AssetSource('audio/14.mp3'),
    AssetSource('audio/15.mp3'),
    AssetSource('audio/16.mp3'),
    AssetSource('audio/17.mp3'),
    AssetSource('audio/18.mp3'),
    AssetSource('audio/19.mp3'),
    AssetSource('audio/20.mp3'),
  ];

  static List<List<Offset>> points = [
    // 1-10
    [Offset(226, 367), Offset(307, 353), Offset(312, 446), Offset(218, 470)],
    [Offset(357, 483), Offset(345, 541), Offset(297, 591), Offset(252, 562), Offset(221, 504), Offset(219, 478)],
    [
      Offset(366, 481),
      Offset(395, 456),
      Offset(428, 465),
      Offset(453, 495),
      Offset(464, 541),
      Offset(431, 576),
      Offset(380, 594),
      Offset(302, 595),
      Offset(349, 540)
    ],
    [
      Offset(400, 452),
      Offset(400, 410),
      Offset(391, 375),
      Offset(427, 363),
      Offset(474, 371),
      Offset(484, 410),
      Offset(483, 483),
      Offset(477, 522),
      Offset(469, 533),
      Offset(442, 478)
    ],
    [
      Offset(371, 277),
      Offset(376, 322),
      Offset(388, 366),
      Offset(420, 362),
      Offset(462, 365),
      Offset(465, 328),
      Offset(465, 291),
      Offset(448, 277),
      Offset(409, 270)
    ],
    [
      Offset(383, 227),
      Offset(403, 189),
      Offset(440, 160),
      Offset(452, 157),
      Offset(479, 177),
      Offset(495, 210),
      Offset(501, 237),
      Offset(478, 258),
      Offset(469, 280),
      Offset(426, 268),
      Offset(393, 268),
      Offset(378, 235),
    ],
    [
      Offset(463, 147),
      Offset(463, 160),
      Offset(494, 197),
      Offset(528, 236),
      Offset(552, 239),
      Offset(577, 239),
      Offset(599, 213),
      Offset(606, 184),
      Offset(606, 168),
      Offset(576, 151),
      Offset(530, 135),
    ],
    [
      Offset(615, 169),
      Offset(606, 196),
      Offset(593, 226),
      Offset(571, 248),
      Offset(575, 273),
      Offset(575, 309),
      Offset(609, 322),
      Offset(634, 319),
      Offset(657, 304),
      Offset(668, 298),
      Offset(663, 246),
      Offset(648, 203),
    ],
    [
      Offset(570, 319),
      Offset(547, 369),
      Offset(543, 387),
      Offset(567, 402),
      Offset(597, 407),
      Offset(620, 403),
      Offset(628, 401),
      Offset(637, 377),
      Offset(648, 355),
      Offset(662, 315),
      Offset(639, 314),
      Offset(622, 322),
      Offset(584, 318),
    ],
    [
      Offset(541, 396),
      Offset(584, 409),
      Offset(621, 422),
      Offset(618, 444),
      Offset(619, 466),
      Offset(626, 479),
      Offset(603, 493),
      Offset(570, 503),
      Offset(545, 503),
      Offset(525, 497),
      Offset(522, 464),
      Offset(524, 432),
    ],
    // 11 -20
    [
      Offset(525, 503),
      Offset(576, 509),
      Offset(614, 494),
      Offset(627, 486),
      Offset(650, 502),
      Offset(675, 511),
      Offset(666, 552),
      Offset(652, 587),
      Offset(639, 607),
      Offset(591, 584),
      Offset(550, 551),
    ],
    [
      Offset(680, 503),
      Offset(677, 532),
      Offset(665, 567),
      Offset(652, 605),
      Offset(687, 609),
      Offset(727, 607),
      Offset(756, 599),
      Offset(770, 584),
      Offset(768, 541),
      Offset(755, 506),
      Offset(732, 482),
    ],
    [
      Offset(733, 470),
      Offset(743, 489),
      Offset(763, 521),
      Offset(772, 557),
      Offset(782, 578),
      Offset(801, 553),
      Offset(826, 519),
      Offset(836, 474),
      Offset(839, 449),
      Offset(809, 414),
      Offset(775, 417),
      Offset(747, 416),
    ],
    [
      Offset(757, 411),
      Offset(743, 401),
      Offset(723, 341),
      Offset(747, 330),
      Offset(781, 319),
      Offset(805, 319),
      Offset(816, 326),
      Offset(825, 358),
      Offset(830, 390),
      Offset(837, 431),
    ],
    [
      Offset(736, 332),
      Offset(715, 323),
      Offset(715, 277),
      Offset(720, 246),
      Offset(729, 213),
      Offset(761, 213),
      Offset(792, 220),
      Offset(812, 233),
      Offset(830, 251),
      Offset(820, 271),
      Offset(812, 303),
      Offset(816, 318),
    ],
    [
      Offset(762, 178),
      Offset(738, 208),
      Offset(752, 211),
      Offset(773, 214),
      Offset(799, 225),
      Offset(821, 243),
      Offset(844, 245),
      Offset(874, 242),
      Offset(891, 241),
      Offset(897, 215),
      Offset(898, 179),
      Offset(893, 155),
      Offset(854, 141),
      Offset(804, 154),
    ],
    [
      Offset(903, 151),
      Offset(903, 203),
      Offset(899, 227),
      Offset(901, 250),
      Offset(915, 273),
      Offset(921, 294),
      Offset(918, 313),
      Offset(942, 316),
      Offset(977, 306),
      Offset(991, 293),
      Offset(1001, 276),
      Offset(994, 234),
      Offset(973, 200),
      Offset(944, 172),
    ],
    [
      Offset(915, 322),
      Offset(926, 319),
      Offset(959, 312),
      Offset(1007, 296),
      Offset(1005, 336),
      Offset(990, 380),
      Offset(986, 400),
      Offset(966, 410),
      Offset(932, 416),
      Offset(900, 413),
      Offset(884, 405),
      Offset(899, 366),
    ],
    [
      Offset(874, 427),
      Offset(888, 412),
      Offset(912, 417),
      Offset(951, 413),
      Offset(976, 406),
      Offset(979, 417),
      Offset(963, 451),
      Offset(958, 476),
      Offset(958, 494),
      Offset(954, 507),
      Offset(926, 521),
      Offset(906, 532),
      Offset(881, 529),
      Offset(871, 514),
      Offset(866, 477),
    ],
    [
      Offset(881, 538),
      Offset(889, 531),
      Offset(917, 528),
      Offset(939, 517),
      Offset(961, 516),
      Offset(977, 525),
      Offset(997, 537),
      Offset(1018, 533),
      Offset(1030, 515),
      Offset(1036, 486),
      Offset(1034, 468),
      Offset(1021, 459),
      Offset(1015, 443),
      Offset(1023, 441),
      Offset(1039, 446),
      Offset(1045, 457),
      Offset(1053, 467),
      Offset(1059, 508),
      Offset(1054, 536),
      Offset(1042, 563),
      Offset(1020, 585),
      Offset(992, 600),
      Offset(952, 603),
      Offset(917, 593),
      Offset(891, 560),
    ],
  ];

  final List<Path> polygonRegions = points.map((e) {
    Path p = Path();
    p.addPolygon(e, true);
    return p;
  }).toList();
  final List<Color> colors = List.generate(points.length, (index) => Color.fromRGBO(50, 50, 200, 0));

  @override
  void initState() {
    Future.delayed(Duration.zero, () async {});
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: Center(
              child: ImageMap(
                  imagePath: 'assets/issa_numbers_snakey.png',
                  imageSize: Size(1138, 764),
                  onTap: (i) {
                    colors[i] = colors[i] == Color.fromRGBO(50, 50, 200, 0)
                        ? Color.fromRGBO(50, 200, 50, 0)
                        : Color.fromRGBO(50, 50, 200, 0);
                    print(i);
                    audioPlayer.play(assetSources[i]);
                    setState(() {});
                  },
                  regions: polygonRegions,
                  regionColors: colors),
            )));
  }
}
