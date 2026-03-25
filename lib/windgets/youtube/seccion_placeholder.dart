import 'package:flutter/material.dart';
import '../../theme/colores_youtube.dart';

class SeccionPlaceholder extends StatelessWidget {
  final String titulo;
  final double altura;

  const SeccionPlaceholder({
    super.key,
    required this.titulo,
    required this.altura,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          titulo,
          style: const TextStyle(
            color: ColoresYoutube.textoPrincipal,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 14),
        Container(
          height: altura,
          width: double.infinity,
          decoration: BoxDecoration(
            color: ColoresYoutube.fondoSecundario,
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color: ColoresYoutube.borde),
          ),
          child: const Center(
            child: Text(
              'Aquí irá el contenido después',
              style: TextStyle(
                color: ColoresYoutube.textoSecundario,
                fontSize: 16,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
