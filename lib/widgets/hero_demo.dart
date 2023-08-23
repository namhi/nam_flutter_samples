import 'package:flutter/material.dart';

class HeroDemoPage extends StatelessWidget {
  const HeroDemoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hero'),
      ),
      body: Column(
        children: [
          ListTile(
            title: const Text("Basic hero"),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return const _BasicHeroPage();
                },
              ));
            },
          )
        ],
      ),
    );
  }
}

class _BasicHeroPage extends StatelessWidget {
  const _BasicHeroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Basic hero Page"),
      ),
      body: Column(
        children: [
          InkWell(
            child: const Hero(
              tag: 'hero_key',
              child: _ImageWidget(),
            ),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) {
                  return const _BasicHeroDetailPage();
                },
              ));
            },
          ),
          const SizedBox(
            height: 12,
          ),
          InkWell(
            child: Hero(
              tag: 'hero_key2',
              createRectTween: (Rect? begin, Rect? end) {
                return MaterialRectCenterArcTween(begin: begin, end: end);
              },
              child: _ImageWidget(),
            ),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) {
                  return _BasicHeroDetail2Page();
                },
              ));
            },
          ),
        ],
      ),
    );
  }
}

class _ImageWidget extends StatelessWidget {
  const _ImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      color: Colors.blue,
    );
  }
}

class _ImageWidget2 extends StatelessWidget {
  const _ImageWidget2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: 300,
      color: Colors.red,
    );
  }
}

class _BasicHeroDetailPage extends StatelessWidget {
  const _BasicHeroDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hero details"),
      ),
      body: const Center(
        child: Hero(
          tag: 'hero_key',
          child: _ImageWidget2(),
        ),
      ),
    );
  }
}

class _BasicHeroDetail2Page extends StatelessWidget {
  const _BasicHeroDetail2Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hero details"),
      ),
      body: Center(
        child: Hero(
          tag: 'hero_key2',
          createRectTween: (Rect? begin, Rect? end) {
            return MaterialRectCenterArcTween(begin: begin, end: end);
          },
          child: _ImageWidget2(),
        ),
      ),
    );
  }
}
