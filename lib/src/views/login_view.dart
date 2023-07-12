import 'package:flutter/material.dart';
import 'package:posi_app/src/widgets/login_sunrise_animation.dart';
import 'package:google_fonts/google_fonts.dart';

class _SemiOvalClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();

    // Calculate control point and end point
    final controlPoint = Offset(size.width / 2, size.height);
    final endPoint = Offset(size.width, size.height / 2);

    path.lineTo(0, size.height / 2);
    path.quadraticBezierTo(
        controlPoint.dx, controlPoint.dy, endPoint.dx, endPoint.dy);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class _LoginSplashTop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: (MediaQuery.of(context).size.width),
          height: ((MediaQuery.of(context).size.height) / 3) * 2,
          child: Stack(
            children: [
              const SunriseCanvas(),
              Positioned.fill(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: ClipPath(
                    clipper: _SemiOvalClipper(),
                    child: Container(
                      height: 200,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Positioned(
                  left: MediaQuery.of(context).size.width / 2,
                  bottom: 100,
                  child: Text(
                    "Posi",
                    textDirection: TextDirection.ltr,
                    style: GoogleFonts.getFont('Tilt Warp',
                        color: const Color.fromRGBO(0, 0, 0, 1)),
                  ))
            ],
          ),
        )
      ],
    );
  }
}

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return _LoginSplashTop();
    // return const Column(
    //   children: [
    //     Text(
    //       'Posi',
    //       textDirection: TextDirection.ltr,
    //     ),
    //     Wrap(
    //       direction: Axis.vertical,
    //       children: [
    //         Text(
    //           'Posi',
    //           textDirection: TextDirection.ltr,
    //         ),
    //       ],
    //     )
    //   ],
    // );
  }
}
