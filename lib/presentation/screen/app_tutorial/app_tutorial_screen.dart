
import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SlideInfo{
  final String title;
  final String caption;
  final String imageUrl;

  SlideInfo({required this.title, required this.caption, required this.imageUrl});
}

final slides =<SlideInfo>[
  SlideInfo(title: 'Busca la comida', caption: 'Laborum anim esse nostrud voluptate aute incididunt. Exercitation irure do Lorem commodo. Excepteur est ad incididunt irure exercitation in mollit enim. Lorem aliqua excepteur ut aliquip est fugiat fugiat do in nisi anim.', imageUrl: 'assets/images/1.png'),
  SlideInfo(title: 'Entrega rapida', caption: 'Ea in magna non adipisicing ea sunt nostrud magna dolore mollit. Laboris et tempor irure magna excepteur eu. Fugiat voluptate adipisicing Lorem aliqua. Cillum irure Lorem reprehenderit officia sint id eu elit veniam eu do et. Nulla eiusmod ut nisi qui. Tempor id proident consequat laboris commodo laborum laborum consequat proident non.', imageUrl: 'assets/images/2.png'),
  SlideInfo(title: 'Disfruta la comida', caption: 'Sint laborum ipsum dolor sunt laborum est nisi sunt occaecat. Excepteur culpa pariatur officia eu. Pariatur consectetur anim deserunt nisi commodo adipisicing nostrud ad et elit ex. Lorem excepteur est aliquip do est aute proident dolor sit velit non minim. Sunt nisi laborum exercitation duis est qui in ipsum culpa consectetur ipsum.', imageUrl: 'assets/images/3.png'),
];
class AppTutorialScreen extends StatefulWidget {
  static const name = 'AppTutorialScreen';
AppTutorialScreen({super.key});

  @override
  State<AppTutorialScreen> createState() => _AppTutorialScreenState();
}

class _AppTutorialScreenState extends State<AppTutorialScreen> {
   final PageController pageviewController=PageController();
   bool endReached = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pageviewController.addListener(() {
      final page = pageviewController.page ?? 0;
      if(!endReached && page >= (slides.length -1.5)){
        setState(() {
          endReached=true;
        });
      }
     });
  }
  @override
  void dispose() {
    // TODO: implement dispose
    pageviewController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          PageView(
            controller:pageviewController ,
            physics: BouncingScrollPhysics(),
            children: slides.map((e) => 
            _Slide(title: e.title, caption: e.caption, imageUrl: e.imageUrl)).toList(),
          ),
          Positioned(
            right: 20,
            top: 50,
            child: TextButton(onPressed: (){context.pop();},child: Text('Salir'),)),
         endReached ? Positioned(
            bottom: 30,
            right: 30,
            child: FadeInRight(
              from: 15,
              delay: Duration(seconds: 1),
              child: FilledButton(onPressed: (){}, child: Text('Comenzar')))):SizedBox()
        ],
      ),
    );
  }
}

class _Slide extends StatelessWidget {
  final String title;
  final String caption;
  final String imageUrl;
  const _Slide({super.key, required this.title, required this.caption, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    final titleStyle = Theme.of(context).textTheme.titleLarge;
    final captionStyle = Theme.of(context).textTheme.bodySmall;
    return Padding(padding: 
    EdgeInsets.symmetric(horizontal: 30),
    child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(imageUrl), 
          const SizedBox(height: 20,),
          Text(title,style: titleStyle,),
          const SizedBox(height: 10,),
          Text(caption,style: captionStyle,),
        ],
      ),
    ),
    );
  }
}