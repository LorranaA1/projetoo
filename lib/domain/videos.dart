import 'package:sciencenotes/data/video_dao.dart';

class Videos {
  late final String urlImage;
  late final String tituloVideo;
  late final String tempoDuracao;
  late final String urlVideo;

  Videos({
    required this.urlImage,
    required this.tituloVideo,
    required this.tempoDuracao,
    required this.urlVideo,
  });

  Videos.fromJson(Map<String, dynamic> json) {
    urlImage = json['urlImage'];
    tituloVideo = json['tituloVideo'];
    tempoDuracao = json['tempoDuracao'];
    urlVideo = json['urlVideo'];
  }

  Map<String, Object?> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['urlImage'] = urlImage;
    data['tituloVideo'] = tituloVideo;
    data['tempoDuracao'] = tempoDuracao;
    data['urlVideo'] = urlVideo;
    return data;
  }
}
