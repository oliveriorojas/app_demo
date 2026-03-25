import 'package:flutter/material.dart';
import '../../theme/colores_youtube.dart';

class MenuLateralYoutube extends StatelessWidget {
  const MenuLateralYoutube({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 240,
      color: ColoresYoutube.fondoPrincipal,
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _TituloSeccionMenu(texto: 'Menú principal'),
          SizedBox(height: 12),
          _BloqueMenuPlaceholder(cantidadLineas: 4),

          SizedBox(height: 18),
          Divider(color: ColoresYoutube.borde, height: 1),

          SizedBox(height: 18),
          _TituloSeccionMenu(texto: 'Biblioteca'),
          SizedBox(height: 12),
          _BloqueMenuPlaceholder(cantidadLineas: 3),

          SizedBox(height: 18),
          Divider(color: ColoresYoutube.borde, height: 1),

          SizedBox(height: 18),
          _TituloSeccionMenu(texto: 'Suscripciones'),
          SizedBox(height: 12),
          _BloqueMenuPlaceholder(cantidadLineas: 5),

          Spacer(),
        ],
      ),
    );
  }
}

class _TituloSeccionMenu extends StatelessWidget {
  final String texto;

  const _TituloSeccionMenu({required this.texto});

  @override
  Widget build(BuildContext context) {
    return Text(
      texto,
      style: const TextStyle(
        color: ColoresYoutube.textoSecundario,
        fontSize: 13,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}

class _BloqueMenuPlaceholder extends StatelessWidget {
  final int cantidadLineas;

  const _BloqueMenuPlaceholder({
    required this.cantidadLineas,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        cantidadLineas,
        (index) => Container(
          margin: const EdgeInsets.only(bottom: 10),
          height: 42,
          decoration: BoxDecoration(
            color: ColoresYoutube.fondoPanel,
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}