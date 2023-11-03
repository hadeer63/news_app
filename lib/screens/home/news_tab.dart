import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/repo/data_sources/remote_ds.dart';
import 'package:news_app/screens/home/cubit/cubit.dart';
import 'package:news_app/screens/home/cubit/states.dart';
import 'package:news_app/screens/home/tabs_controller.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class NewsTab extends StatefulWidget {
  String catId;

  NewsTab(this.catId, {super.key});

  @override
  State<NewsTab> createState() => _NewsTabState();
}

class _NewsTabState extends State<NewsTab> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(RemoteDS())..getSources(widget.catId),
      child: BlocConsumer<HomeCubit, HomeStates>(
        listener: (context, state) {
          if (state is HomeGetSourcesLoadingState ||
              state is HomeGetNewsDataLoadingState) {
            showDialog(
              context: context,
              builder: (context) => const AlertDialog(
                backgroundColor: Colors.transparent,
                elevation: 0,
                title: Center(child: CircularProgressIndicator()),
              ),
            );
          } else if (state is HomeGetSourcesErrorState) {
            print(state.error);
          } else if (state is HomeGetSourcesSuccessState ||
              state is HomeChangeSourceState) {
            HomeCubit.get(context).getNewsData();
          } else if (state is HomeGetNewsDataSuccessState) {
            Navigator.pop(context);
          }
        },
        builder: (context, state) {
          return TabControllerWidget();
        },
      ),
    );
  }
}
