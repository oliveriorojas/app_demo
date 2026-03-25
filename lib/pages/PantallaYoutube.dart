import 'package:flutter/material.dart';
import '../theme/colores_youtube.dart';
import '../windgets/youtube/barra_superior_youtube.dart'; 
import '../windgets/youtube/menu_lateral_youtube.dart'; 
import '../windgets/youtube/barra_categorias_youtube.dart';


class PantallaYoutube extends StatelessWidget {
  const PantallaYoutube({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColoresYoutube.fondoPrincipal,
      body: const SafeArea(
        child: Column(
          children: [
            BarraSuperiorYoutube(),
            Expanded(
              child: Row(
                children: [
                  MenuLateralYoutube(),
                  Expanded(
                    child: Column(
                      children: [
                        BarraCategoriasYoutube(),
                        Expanded(
                          child: ContenidoPrincipalYoutube(),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}