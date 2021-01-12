import 'package:flutter/cupertino.dart';

class Data {
  final String title;
  final String subtitle;
  final String info;
  final String imageurl;
  final String backgroundImage;

  Data({
    @required this.title,
    @required this.info,
    @required this.imageurl,
    @required this.subtitle,
    @required this.backgroundImage,
  });
}

final Data port = Data(
  title: 'Portfolio  webApp',
  subtitle: 'Travis_ugo Portfolio',
  info:
      'this is a personal portfolio webapp developed with flutter to show case my develpomebt skills',
  imageurl: 'download.jpg',
  backgroundImage: 'download.jpg',
);
final Data klaws = Data(
  title: 'Telegram Bot',
  subtitle: 'Telegram FX forwarder',
  info: 'this is a telegram FX forwarder',
  imageurl: 'agro.jpg',
  backgroundImage: 'agro.jpg',
);

final Data world = Data(
  title: 'World News App',
  subtitle: 'World News app',
  info:
      'this is a world new app developed woth flutter and uses the new api to get news information from all over  the world',
  imageurl: 'black..jpg',
  backgroundImage: 'black..jpg',
);

final Data soccer = Data(
  title: 'Sport News App',
  subtitle: 'Sport News app',
  info:
      'this app is app is made to get sport new from all over the world and it makes use of the sky news sport API',
  imageurl: 'net.jpg',
  backgroundImage: 'net.jpg',
);
