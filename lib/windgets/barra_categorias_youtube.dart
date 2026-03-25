import 'package:flutter/material.dart';
import '../../theme/colores_youtube.dart';

class BarraCategoriasYoutube extends StatelessWidget {
  const BarraCategoriasYoutube({super.key});

  @override
  Widget build(BuildContext context) {
    final categorias = [
      'Todos',
      'Música',
      'Videojuegos',
      'Programación',
      'Hardware',
      'GNU/Linux',
      'Seguridad informática',
    ];

    return Container(
      height: 60,
      alignment: Alignment.centerLeft,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: const BoxDecoration(
        color: ColoresYoutube.fondoPrincipal,
        border: Border(
          bottom: BorderSide(
            color: ColoresYoutube.borde,
            width: 0.4,
          ),
        ),
      ),
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: categorias.length,
        separatorBuilder: (_, __) => const SizedBox(width: 10),
        itemBuilder: (context, index) {
          final bool activo = index == 0;

          return Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            decoration: BoxDecoration(
              color: activo
                  ? ColoresYoutube.chipActivo
                  : ColoresYoutube.chipInactivo,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text(
              categorias[index],
              style: TextStyle(
                color: activo
                    ? ColoresYoutube.textoChipActivo
                    : ColoresYoutube.textoChipInactivo,
                fontWeight: FontWeight.w500,
              ),
            ),
          );
        },
      ),
    );
  }
}