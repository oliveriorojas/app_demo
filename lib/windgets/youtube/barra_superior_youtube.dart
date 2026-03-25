import 'package:flutter/material.dart';
import '../../theme/colores_youtube.dart';

class BarraSuperiorYoutube extends StatelessWidget {
  const BarraSuperiorYoutube({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64,
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
      child: Row(
        children: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.menu,
              color: ColoresYoutube.textoPrincipal,
            ),
          ),
          const SizedBox(width: 8),
          Row(
            children: [
              Container(
                width: 34,
                height: 24,
                decoration: BoxDecoration(
                  color: ColoresYoutube.rojoYoutube,
                  borderRadius: BorderRadius.circular(6),
                ),
                child: const Icon(
                  Icons.play_arrow,
                  color: Colors.white,
                  size: 18,
                ),
              ),
              const SizedBox(width: 8),
              const Text(
                'YouTube',
                style: TextStyle(
                  color: ColoresYoutube.textoPrincipal,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const Spacer(),
          const SizedBox(
            width: 650,
            child: _BuscadorYoutube(),
          ),
          const Spacer(),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.mic_none,
              color: ColoresYoutube.textoPrincipal,
            ),
          ),
          const SizedBox(width: 8),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.notifications_none,
              color: ColoresYoutube.textoPrincipal,
            ),
          ),
          const SizedBox(width: 8),
          const CircleAvatar(
            radius: 16,
            backgroundColor: Colors.deepOrange,
            child: Text(
              'O',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _BuscadorYoutube extends StatelessWidget {
  const _BuscadorYoutube();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            height: 40,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(24),
              border: Border.all(
                color: ColoresYoutube.borde,
              ),
            ),
            child: const TextField(
              style: TextStyle(color: ColoresYoutube.textoPrincipal),
              decoration: InputDecoration(
                hintText: 'Buscar',
                hintStyle: TextStyle(color: ColoresYoutube.textoSecundario),
                border: InputBorder.none,
                contentPadding: EdgeInsets.symmetric(horizontal: 18, vertical: 10),
              ),
            ),
          ),
        ),
        const SizedBox(width: 8),
        Container(
          width: 64,
          height: 40,
          decoration: BoxDecoration(
            color: ColoresYoutube.fondoPanel,
            borderRadius: BorderRadius.circular(24),
            border: Border.all(color: ColoresYoutube.borde),
          ),
          child: const Icon(
            Icons.search,
            color: ColoresYoutube.textoPrincipal,
          ),
        ),
      ],
    );
  }
}