import 'package:avs_svg_provider/avs_svg_provider.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AVSSVGProvider Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: false,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('AVSSVGProvider Demo'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: MediaQuery.sizeOf(context).width,
                  height: MediaQuery.sizeOf(context).width,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.contain,
                      image: AVSSVGProvider(
                        'assets/layer1.svg',
                        scale: 9,
                        gradient: const LinearGradient(
                          colors: <Color>[Colors.red, Colors.blue],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                      ),
                    ),
                  ),
                  child: const Text(
                    "AVSSVGProvider Gradient Example",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  width: MediaQuery.sizeOf(context).width,
                  height: MediaQuery.sizeOf(context).width,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AVSSVGProvider(
                        'assets/layer2.svg',
                        width: MediaQuery.sizeOf(context).width,
                        height: MediaQuery.sizeOf(context).width,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Image(
                  image: AVSSVGProvider(
                    'assets/layer3.svg',
                    scale: 8,
                    color: Colors.blue,
                  ),
                ),
                // Container(
                //   width: MediaQuery.sizeOf(context).width,
                //   height: MediaQuery.sizeOf(context).width,
                //   decoration: BoxDecoration(
                //     image: DecorationImage(
                //       image: AVSSVGProvider(
                //         'assets/layer3.svg',
                //         width: MediaQuery.sizeOf(context).width,
                //         height: MediaQuery.sizeOf(context).width,
                //         // scale: 8,
                //         color: Colors.blue,
                //       ),
                //     ),
                //   ),
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
