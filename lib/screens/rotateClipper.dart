
import 'package:flutter/material.dart';

class GlowingContainer extends StatelessWidget {
  final String buttonText;
  final Widget destinationPage;

  const GlowingContainer({
    super.key,
    required this.buttonText,
    required this.destinationPage,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => destinationPage),
        );
      },
      child: Container(
        width: 211,
        height: 42,
        decoration: BoxDecoration(
          border: const GradientBoxBorder(
            gradient: LinearGradient(colors: [Color(0xFF19A1BE), Color(0xFF7D4192)]),
            width: 2,
          ),
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: const Color(0xFF19A1BE).withOpacity(0.6),
              spreadRadius: 1,
              blurRadius: 50,
              offset: const Offset(-20, 0),
            ),
            BoxShadow(
              color: const Color(0xFF7D4192).withOpacity(0.6),
              spreadRadius: 1,
              blurRadius: 50,
              offset: const Offset(20, 0),
            ),
          ],
        ),
        child: Center(
          child: Text(
            buttonText,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 16,
              fontFamily: "Axiforma",
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}

class GradientBoxBorder extends BoxBorder {
  final Gradient gradient;
  final double width;

  const GradientBoxBorder({required this.gradient, this.width = 1.0});

  @override
  void paint(Canvas canvas, Rect rect,
      {TextDirection? textDirection, BoxShape shape = BoxShape.rectangle, BorderRadius? borderRadius}) {
    if (borderRadius != null) {
      _paintBorderWithRadius(canvas, rect, borderRadius);
    } else {
      _paintBorderWithoutRadius(canvas, rect);
    }
  }

  void _paintBorderWithRadius(Canvas canvas, Rect rect, BorderRadius borderRadius) {
    final RRect outerRRect = borderRadius.toRRect(rect);
    final RRect innerRRect = borderRadius.toRRect(rect.deflate(width));
    final Paint paint = Paint()..shader = gradient.createShader(rect);
    final Path borderPath = Path()
      ..addRRect(outerRRect)
      ..addRRect(innerRRect)
      ..fillType = PathFillType.evenOdd;

    canvas.drawPath(borderPath, paint);
  }

  void _paintBorderWithoutRadius(Canvas canvas, Rect rect) {
    final Paint paint = Paint()
      ..shader = gradient.createShader(rect)
      ..strokeWidth = width
      ..style = PaintingStyle.stroke;

    canvas.drawRect(rect, paint);
  }

  @override
  EdgeInsetsGeometry get dimensions => EdgeInsets.all(width);

  @override
  ShapeBorder scale(double t) {
    return GradientBoxBorder(gradient: gradient, width: width * t);
  }

  @override
  Path getInnerPath(Rect rect, {TextDirection? textDirection}) {
    return Path()..addRect(rect.deflate(width));
  }

  @override
  Path getOuterPath(Rect rect, {TextDirection? textDirection}) {
    return Path()..addRect(rect);
  }

  @override
  // TODO: implement bottom
  BorderSide get bottom => throw UnimplementedError();

  @override
  // TODO: implement isUniform
  bool get isUniform => throw UnimplementedError();

  @override
  // TODO: implement top
  BorderSide get top => throw UnimplementedError();
}
