import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wall_pic_app/ui/presenters/home_page/home_page_cubit.dart';
import 'package:wall_pic_app/ui/presenters/home_page/home_page_state.dart';
import 'package:wall_pic_app/ui/presenters/widgets/image_card.dart';
import 'package:wall_pic_app/ui/router/router.dart';

class ImageList extends StatefulWidget {
  ImageList({Key? key, required this.state}) : super(key: key);
  final HomePageState state;

  @override
  State<ImageList> createState() => _ImageListState();
}

class _ImageListState extends State<ImageList> {
  final _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_scrollListener);
  }

  @override
  void dispose() {
    super.dispose();
    _scrollController.dispose();
  }

  _scrollListener() {
    if (_scrollController.offset >=
            _scrollController.position.maxScrollExtent &&
        !_scrollController.position.outOfRange) {
      print('last');
      var page = widget.state.page! + 1;

      if (!widget.state.paginateLoading!)
        context.read<HomePageCubit>().getPhotoList(page);
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      child: BlocConsumer<HomePageCubit, HomePageState>(
        listener: (context, state) {},
        buildWhen: (previousState, currentState) {
          return currentState.photos!.length != previousState.photos!.length;
        },
        builder: (context, state) => MasonryGridView.count(
          crossAxisCount: size.width > 750 ? 3 : 2,
          primary: false,
          mainAxisSpacing: 8.h,
          crossAxisSpacing: 8.w,
          shrinkWrap: true,
          itemCount: state.photos!.length + 1,
          controller: _scrollController,
          itemBuilder: (BuildContext context, int index) {
            if (index < state.photos!.length) {
              return GestureDetector(
                onTap: () => Navigator.of(context).pushNamed(
                  AppRoutes.DETAIL_PAGE,
                  arguments: state.photos![index],
                ),
                child: ImageCard(
                  imageUrl: state.photos![index].thumbs!.original!,
                  favorite: state.photos![index].favorites.toString(),
                  colors: state.photos![index].colors!,
                  id: state.photos![index].id!,
                ),
              );
            } else {
              return Center(
                child: CircularProgressIndicator(
                  color: !state.paginateLoading! ? Colors.black : Colors.white,
                ),
              );
            }
          },
        ),
      ),
    );
  }
}
