import 'package:flutter/material.dart';
import 'seccion_placeholder.dart';

class ContenidoPrincipalYoutube extends StatelessWidget {
  const ContenidoPrincipalYoutube({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          SeccionPlaceholder(titulo: 'Contenido principal', altura: 220),
          SizedBox(height: 24),
          SeccionPlaceholder(titulo: 'Sección secundaria', altura: 180),
          SizedBox(height: 24),
          SeccionPlaceholder(titulo: 'Sección inferior', altura: 180),
        ],
      ),
    );
  }
}
