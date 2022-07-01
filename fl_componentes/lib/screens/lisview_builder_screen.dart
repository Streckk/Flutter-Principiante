import 'package:fl_componentes/theme/app_theme.dart';
import 'package:flutter/material.dart';

class LisviewBuilderScreen extends StatefulWidget {
   
  const LisviewBuilderScreen({Key? key}) : super(key: key);

  @override
  State<LisviewBuilderScreen> createState() => _LisviewBuilderScreenState();
}

class _LisviewBuilderScreenState extends State<LisviewBuilderScreen> {
  final List<int> imagesIds = [1,2,3,4,5,6,7,8,9,10];
  final ScrollController ScrollControler=ScrollController();
  bool isLoading =false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    ScrollControler.addListener(() {
      if((ScrollControler.position.pixels+500)>=ScrollControler.position.maxScrollExtent){
      fetchData();
    }
    });
    
  }

  Future fetchData() async{
    if(isLoading) return;
    isLoading=true;
    setState(() {});
    await Future.delayed(Duration(seconds: 3));
    add5();

    isLoading=false;
    setState(() {});
    if(ScrollControler.position.pixels+100<=ScrollControler.position.maxScrollExtent)return;
    ScrollControler.animateTo(
      ScrollControler.position.pixels+120, 
      duration: const Duration(milliseconds: 300), 
      curve: Curves.fastOutSlowIn
      );
  }
  


  void add5(){
    final lasid= imagesIds.last;
    imagesIds.addAll(
      [1,2,3,4,5].map((e) => lasid+e)
    );
    setState(() {
    });
  }

  Future<void> onrefresh()async{
    await Future.delayed(Duration(seconds: 2));
    final lastId=imagesIds.last;
    imagesIds.clear();
    imagesIds.add(lastId+1);
    add5();
  }

  @override
  Widget build(BuildContext context) {
    final size= MediaQuery.of(context).size;
    return  Scaffold(
      body: MediaQuery.removePadding(
        context: context,
        removeTop: true,
        removeBottom: true,
        child: Stack(
          children: [
            RefreshIndicator(
              color: AppTheme.Primario,
              onRefresh: onrefresh,
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                controller: ScrollControler,
                itemCount: imagesIds.length,
                itemBuilder: (BuildContext context, int index) {
                  return  FadeInImage(
                    placeholder:  const AssetImage('assets/carga.gif'), 
                    image: NetworkImage('https://picsum.photos/500/300?image=${imagesIds[index]}'),
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: 230,
                    );
                },
              ),
            ),
            if(isLoading)
             Positioned(
                bottom: 40,
                left: size.width *0.5-30,
              child: _LoadingIcon()
              )
          ],
        ),
      ),
    );
  }
}

class _LoadingIcon extends StatelessWidget {
  const _LoadingIcon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      
      width: 60,
      height: 60,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.5),
        shape: BoxShape.circle
      ),
      child: const CircularProgressIndicator(color: AppTheme.Primario,),
    );
  }
}