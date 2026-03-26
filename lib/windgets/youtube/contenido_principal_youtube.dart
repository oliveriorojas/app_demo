import 'package:flutter/material.dart';
import '../../theme/colores_youtube.dart';
import 'tarjeta_video_youtube.dart';

class ContenidoPrincipalYoutube extends StatelessWidget {
  const ContenidoPrincipalYoutube({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> videos = [
      {
        'titulo': '¿VALE la pena STARLINK en 2026?',
        'canal': 'Aziel Medina',
        'meta': '26 k vistas · hace 3 días',
        'duracion': '13:44',
        'thumbnail': 'assets/youtube/starlink.jpg',
        'avatar': 'assets/youtube/aziel.jpg',
      },
      {
        'titulo': 'Neon Rain — I Let the Night Decide (Deep Night Vibe)',
        'canal': 'MyOwnWay Music',
        'meta': '37 vistas · hace 3 días',
        'duracion': '2:10',
        'thumbnail': 'assets/youtube/neon_rain.jpg',
        'avatar': 'assets/youtube/myownway.jpg',
      },
      {
        'titulo': 'Volé en el asiento de \$15,000 con ducha: ¿vale la pena?',
        'canal': 'Luisito Comunica',
        'meta': '6.5 M de vistas · hace 6 días',
        'duracion': '28:23',
        'thumbnail': 'assets/youtube/emirates.jpg',
        'avatar': 'assets/youtube/luisito.jpg',
      },
      {
        'titulo': 'Esto es lo que hace un programador moderno en 2026',
        'canal': 'Fazt',
        'meta': '247 k vistas · hace 2 meses',
        'duracion': '36:51',
        'thumbnail': 'assets/youtube/programador_2026.jpg',
        'avatar': 'assets/youtube/fazt.jpg',
      },
      {
        'titulo': 'Mi NUEVO SETUP tiene un PC SECRETO (Dentro de la mesa)',
        'canal': 'Nate Gentile',
        'meta': '949 k vistas · hace 5 meses',
        'duracion': '43:28',
        'thumbnail': 'assets/youtube/setup_pc.jpg',
        'avatar': 'assets/youtube/nate.jpg',
      },
      {
        'titulo': 'Mix: LAGOS & Danny Ocean - Mónaco (Video Oficial)',
        'canal': 'Danny Ocean, LAGOS, Pol Granch y muchos más',
        'meta': '',
        'duracion': 'Mix',
        'thumbnail': 'assets/youtube/monaco.jpg',
        'avatar': 'assets/youtube/music.jpg',
      },
    ];

    return Container(
      color: ColoresYoutube.fondoPrincipal,
      child: GridView.count(
        crossAxisCount: 3,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 18),
        crossAxisSpacing: 16,
        mainAxisSpacing: 24,
        childAspectRatio: 0.92,
        children: videos.map((video) {
          return _crearCardVideo(context, video);
        }).toList(),
      ),
    );
  }

  Widget _crearCardVideo(BuildContext context, Map<String, dynamic> video) {
    return TarjetaVideoYoutube(
      titulo: video['titulo'],
      canal: video['canal'],
      meta: video['meta'],
      duracion: video['duracion'],
      thumbnail: video['thumbnail'],
      avatar: video['avatar'],
      onTap: () {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Abriendo video: ${video['titulo']}'),
            duration: const Duration(milliseconds: 700),
            backgroundColor: Colors.black87,
          ),
        );
      },
    );
  }
}
