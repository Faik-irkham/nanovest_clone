// import 'package:flutter/material.dart';

// import '../widgets/header_section.dart';
// import '../widgets/overview_section.dart';
// import '../widgets/portfolio_section.dart';
// import '../widgets/saldo_card.dart';

// class HomePage extends StatefulWidget {
//   const HomePage({super.key});

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   bool _animate = false;

//   @override
//   void initState() {
//     super.initState();
//     WidgetsBinding.instance.addPostFrameCallback((_) {
//       setState(() {
//         _animate = true;
//       });
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     const animationDuration = Duration(seconds: 5);

//     return Scaffold(
//       body: Container(
//         width: double.infinity,
//         decoration: const BoxDecoration(
//           gradient: RadialGradient(
//             center: Alignment(0.9, 0.2),
//             radius: 0.8,
//             colors: [Color(0xCC0E68B4), Color(0XFF151128)],
//             stops: [0.0, 1.0],
//           ),
//         ),
//         child: SafeArea(
//           child: SingleChildScrollView(
//             child: Padding(
//               padding: const EdgeInsets.all(16),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   // HeaderSection (slide dari atas)
//                   TweenAnimationBuilder<Offset>(
//                     duration: animationDuration,
//                     tween: Tween<Offset>(
//                       begin: const Offset(0, -1),
//                       end: _animate ? Offset.zero : const Offset(0, -1),
//                     ),
//                     curve: Curves.easeOut,
//                     builder: (context, offset, child) {
//                       return Transform.translate(offset: offset, child: child);
//                     },
//                     child: const HeaderSection(),
//                   ),
//                   const SizedBox(height: 16),

//                   // PortfolioSection (zoom in)
//                   TweenAnimationBuilder<double>(
//                     duration: animationDuration,
//                     tween: Tween<double>(begin: 0.8, end: _animate ? 1.0 : 0.8),
//                     curve: Curves.easeOutBack,
//                     builder: (context, scale, child) {
//                       return Transform.scale(scale: scale, child: child);
//                     },
//                     child: const PortfolioSection(),
//                   ),
//                   const SizedBox(height: 16),

//                   // SaldoCard (slide dari kiri)
//                   TweenAnimationBuilder<Offset>(
//                     duration: animationDuration,
//                     tween: Tween<Offset>(
//                       begin: const Offset(-1, 0),
//                       end: _animate ? Offset.zero : const Offset(-1, 0),
//                     ),
//                     curve: Curves.easeOut,
//                     builder: (context, offset, child) {
//                       return Transform.translate(offset: offset, child: child);
//                     },
//                     child: const SaldoCard(),
//                   ),
//                   const SizedBox(height: 16),

//                   // OverviewSection (slide dari bawah)
//                   TweenAnimationBuilder<Offset>(
//                     duration: animationDuration,
//                     tween: Tween<Offset>(
//                       begin: const Offset(0, 1),
//                       end: _animate ? Offset.zero : const Offset(0, 1),
//                     ),
//                     curve: Curves.easeOut,
//                     builder: (context, offset, child) {
//                       return Transform.translate(offset: offset, child: child);
//                     },
//                     child: const OverviewSection(),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

import '../widgets/header_section.dart';
import '../widgets/overview_section.dart';
import '../widgets/portfolio_section.dart';
import '../widgets/saldo_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _animate = false;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      setState(() {
        _animate = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    const animationDuration = Duration(seconds: 5);

    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: RadialGradient(
            center: Alignment(0.9, 0.2),
            radius: 0.8,
            colors: [Color(0xCC0E68B4), Color(0XFF151128)],
            stops: [0.0, 1.0],
          ),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // HeaderSection: slide dari atas + fade in
                  TweenAnimationBuilder<Offset>(
                    duration: animationDuration,
                    tween: Tween<Offset>(
                      begin: const Offset(0, -1),
                      end: _animate ? Offset.zero : const Offset(0, -1),
                    ),
                    curve: Curves.easeOut,
                    builder: (context, offset, child) {
                      return AnimatedOpacity(
                        opacity: _animate ? 1.0 : 0.0,
                        duration: animationDuration,
                        child: Transform.translate(
                          offset: offset,
                          child: child,
                        ),
                      );
                    },
                    child: const HeaderSection(),
                  ),
                  const SizedBox(height: 16),

                  // PortfolioSection: zoom in + fade in
                  TweenAnimationBuilder<double>(
                    duration: animationDuration,
                    tween: Tween<double>(begin: 0.8, end: _animate ? 1.0 : 0.8),
                    curve: Curves.easeOutBack,
                    builder: (context, scale, child) {
                      return AnimatedOpacity(
                        opacity: _animate ? 1.0 : 0.0,
                        duration: animationDuration,
                        child: Transform.scale(scale: scale, child: child),
                      );
                    },
                    child: const PortfolioSection(),
                  ),
                  const SizedBox(height: 16),

                  // SaldoCard: slide dari kiri + fade in
                  TweenAnimationBuilder<Offset>(
                    duration: animationDuration,
                    tween: Tween<Offset>(
                      begin: const Offset(-1, 0),
                      end: _animate ? Offset.zero : const Offset(-1, 0),
                    ),
                    curve: Curves.easeOut,
                    builder: (context, offset, child) {
                      return AnimatedOpacity(
                        opacity: _animate ? 1.0 : 0.0,
                        duration: animationDuration,
                        child: Transform.translate(
                          offset: offset,
                          child: child,
                        ),
                      );
                    },
                    child: const SaldoCard(),
                  ),
                  const SizedBox(height: 16),

                  // OverviewSection: slide dari bawah + fade in
                  TweenAnimationBuilder<Offset>(
                    duration: animationDuration,
                    tween: Tween<Offset>(
                      begin: const Offset(0, 1),
                      end: _animate ? Offset.zero : const Offset(0, 1),
                    ),
                    curve: Curves.easeOut,
                    builder: (context, offset, child) {
                      return AnimatedOpacity(
                        opacity: _animate ? 1.0 : 0.0,
                        duration: animationDuration,
                        child: Transform.translate(
                          offset: offset,
                          child: child,
                        ),
                      );
                    },
                    child: const OverviewSection(),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
