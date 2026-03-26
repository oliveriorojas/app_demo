import 'package:flutter/material.dart';
import '../../theme/colores_youtube.dart';

class MenuLateralYoutube extends StatelessWidget {
  const MenuLateralYoutube({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 220,
      color: ColoresYoutube.fondoPrincipal,
      child: SingleChildScrollView(
        padding: const EdgeInsets.only(top: 4, bottom: 10, left: 10, right: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const _OpcionMenu(
              texto: 'Principal',
              icono: Icon(Icons.home_filled, color: Colors.white, size: 22),
              seleccionado: true,
            ),
            const _OpcionMenu(
              texto: 'Shorts',
              icono: Icon(
                Icons.ondemand_video_outlined,
                color: Colors.white,
                size: 22,
              ),
            ),

            const SizedBox(height: 10),
            const Divider(color: ColoresYoutube.borde, thickness: 0.6),
            const SizedBox(height: 10),

            const _TituloSeccion(texto: 'Tu'),
            const SizedBox(height: 6),

            const _OpcionMenu(
              texto: 'Playlists',
              icono: Icon(
                Icons.playlist_play_outlined,
                color: Colors.white,
                size: 22,
              ),
            ),
            const _OpcionMenu(
              texto: 'Ver más tarde',
              icono: Icon(
                Icons.watch_later_outlined,
                color: Colors.white,
                size: 22,
              ),
            ),
            const _OpcionMenu(
              texto: 'Videos que me gustan',
              icono: Icon(
                Icons.thumb_up_off_alt_outlined,
                color: Colors.white,
                size: 22,
              ),
            ),
            const _OpcionMenu(
              texto: 'Tus videos',
              icono: Icon(
                Icons.smart_display_outlined,
                color: Colors.white,
                size: 22,
              ),
            ),
            const _OpcionMenu(
              texto: 'Descargas',
              icono: Icon(
                Icons.download_outlined,
                color: Colors.white,
                size: 22,
              ),
            ),
            const _OpcionMenu(
              texto: 'Mostrar más',
              icono: Icon(
                Icons.keyboard_arrow_down_outlined,
                color: Colors.white,
                size: 22,
              ),
            ),

            const SizedBox(height: 10),
            const Divider(color: ColoresYoutube.borde, thickness: 0.6),
            const SizedBox(height: 10),

            const _TituloSeccion(texto: 'Explorar'),
            const SizedBox(height: 6),

            const _OpcionMenu(
              texto: 'Música',
              icono: Icon(
                Icons.music_note_outlined,
                color: Colors.white,
                size: 22,
              ),
            ),
            const _OpcionMenu(
              texto: 'Películas',
              icono: Icon(
                Icons.local_movies_outlined,
                color: Colors.white,
                size: 22,
              ),
            ),
            const _OpcionMenu(
              texto: 'En vivo',
              icono: Icon(
                Icons.wifi_tethering_outlined,
                color: Colors.white,
                size: 22,
              ),
            ),
            const _OpcionMenu(
              texto: 'Mostrar más',
              icono: Icon(
                Icons.keyboard_arrow_down_outlined,
                color: Colors.white,
                size: 22,
              ),
            ),

            const SizedBox(height: 10),
            const Divider(color: ColoresYoutube.borde, thickness: 0.6),
            const SizedBox(height: 10),

            const _TituloSeccion(texto: 'Más de YouTube'),
            const SizedBox(height: 6),

            const _OpcionMenu(
              texto: 'YouTube Premium',
              icono: _IconoYoutubeRedondo(icono: Icons.play_arrow_rounded),
            ),
            const _OpcionMenu(
              texto: 'YouTube Music',
              icono: _IconoYoutubeRedondo(icono: Icons.music_note_rounded),
            ),
            const _OpcionMenu(
              texto: 'YouTube Kids',
              icono: _IconoYoutubeRedondo(icono: Icons.child_care_rounded),
            ),
          ],
        ),
      ),
    );
  }
}

class _TituloSeccion extends StatelessWidget {
  final String texto;

  const _TituloSeccion({required this.texto});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Text(
        texto,
        style: const TextStyle(
          color: ColoresYoutube.textoSecundario,
          fontSize: 15,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}

class _OpcionMenu extends StatelessWidget {
  final Widget icono;
  final String texto;
  final bool seleccionado;

  const _OpcionMenu({
    required this.icono,
    required this.texto,
    this.seleccionado = false,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(12),
      onTap: () {},
      child: Container(
        height: 40,
        margin: const EdgeInsets.symmetric(vertical: 2),
        padding: const EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
          color: seleccionado ? const Color(0xFF2A2A2A) : Colors.transparent,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: [
            SizedBox(width: 28, child: Center(child: icono)),
            const SizedBox(width: 14),
            Expanded(
              child: Text(
                texto,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _IconoYoutubeRedondo extends StatelessWidget {
  final IconData icono;

  const _IconoYoutubeRedondo({required this.icono});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 22,
      height: 22,
      decoration: const BoxDecoration(
        color: Colors.red,
        shape: BoxShape.circle,
      ),
      child: Icon(icono, color: Colors.white, size: 14),
    );
  }
}
