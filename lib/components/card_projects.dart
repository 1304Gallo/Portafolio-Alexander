import 'package:flutter/material.dart';
import 'package:portafolio/constants/colors.dart';

class CardProjects extends StatefulWidget {
  final String title;
  final String description;
  final String imagePath;
  final List<String> techTags;
  final VoidCallback onVisitLink;
  final VoidCallback onGithubLink;

  const CardProjects({
    super.key,
    required this.title,
    required this.description,
    required this.imagePath,
    required this.techTags,
    required this.onVisitLink,
    required this.onGithubLink,
  });

  @override
  State<CardProjects> createState() => _CardProjectsState();
}

class _CardProjectsState extends State<CardProjects> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    // 2. MouseRegion detecta la entrada y salida del cursor
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      // Cambiamos el cursor para indicar que es clickable
      cursor: SystemMouseCursors.click,

      // 3. AnimatedContainer suaviza los cambios de las propiedades
      child: AnimatedContainer(
        height: 400,
        duration: const Duration(milliseconds: 200),
        curve: Curves.easeOut, // Curva de animación natural
        width: 300,
        // 4. Transformación: Mueve la tarjeta 8 pixeles hacia arriba si está en hover
        transform: Matrix4.translationValues(0.0, _isHovered ? -8.0 : 0.0, 0.0),
        decoration: BoxDecoration(
          color: CustomColor.bgLightk,
          borderRadius: BorderRadius.circular(20),
          // 5. Borde sutil al hacer hover para destacar
          border: Border.all(
            color: _isHovered
                ? CustomColor.yellowSecondary.withValues(alpha: 50)
                : Colors.transparent,
            width: 1.5,
          ),
          // 6. Sombra dinámica: Se hace más grande y oscura en hover
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: _isHovered ? 0.3 : 0.15),
              blurRadius: _isHovered ? 25 : 10,
              offset: Offset(0, _isHovered ? 15 : 5),
              spreadRadius: _isHovered ? 2 : 0,
            ),
          ],
        ),
        // El contenido interno permanece igual que el diseño estático
        child: Column(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(20),
              ),
              child: SizedBox(
                height: 140,
                width: double.infinity,
                child: Image.asset(widget.imagePath, fit: BoxFit.cover),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Text(
                      widget.title,
                      style: const TextStyle(
                        color: CustomColor.whitePrimary,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          widget.description,
                          style: const TextStyle(
                            color: CustomColor.whiteSecondary,
                            fontSize: 14,
                            height: 1.5,
                          ),
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Wrap(
                    spacing: 8,
                    runSpacing: 8,
                    children: widget.techTags
                        .map((tag) => _buildTechTag(tag))
                        .toList(),
                  ),
                  const SizedBox(height: 24),
                  Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          onPressed: widget.onVisitLink,
                          style: ElevatedButton.styleFrom(
                            backgroundColor: CustomColor.yellowPrimary,
                            foregroundColor: CustomColor.scaffoldBg,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            padding: const EdgeInsets.symmetric(vertical: 12),
                          ),

                          child: const Text(
                            "Ver Demo",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTechTag(String text) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
        color: CustomColor.bgLight2,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        text,
        style: const TextStyle(color: CustomColor.whiteSecondary, fontSize: 12),
      ),
    );
  }
}
