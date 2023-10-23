import 'package:flutter/material.dart';
import 'package:news_app/screens/tabs_controller.dart';
import 'package:news_app/shared/network/remote/manager.dart';

class HomeLayout extends StatelessWidget {
  static const String routeName='layout';

  const HomeLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
          image: DecorationImage(
              image: AssetImage("assets/images/background.png"),
              fit: BoxFit.fill)
      ),
      child: Scaffold(
        drawer:const Drawer(),
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor:  Colors.green,
          shape: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.transparent
            ),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(18),
              bottomRight: Radius.circular(18)
            )
          ),
          title: const Text("News"),
        ),
        body: FutureBuilder(
          future: ApiManager.getNews(),
            builder: (context, snapshot) {
              if(snapshot.connectionState==ConnectionState.waiting){
                return const Center(
                    child: CircularProgressIndicator());
              }
              if(snapshot.hasError){
                return const Center(
                    child: Text("Somethig went Wrong"));
              }

              var sources=snapshot.data?.sources??[];
              return TabControllerWidget(sources);

            },),
      ),
    );
  }
}
