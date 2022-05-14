import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:image_downloader/image_downloader.dart';
import 'package:wall_pic_app/config/constans.dart';
import 'package:wall_pic_app/ui/presenters/detail_page/detail_page_cubit.dart';
import 'package:wall_pic_app/ui/presenters/detail_page/detail_page_state.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:wall_pic_app/ui/presenters/widgets/fade_in.dart';
import 'package:wallpaper_manager_flutter/wallpaper_manager_flutter.dart';
import '../../../base/enums/request_status.dart';
import '../../../domain/models/photo/photo.dart';
import 'package:fluttertoast/fluttertoast.dart';

class DetailPage extends StatefulWidget {
  DetailPage({Key? key, this.photoData}) : super(key: key);
  final Photo? photoData;

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();

    ImageDownloader.callback(onProgressUpdate: (imageId, progress) {
      setState(() {
        _progress = progress;
      });
    });
  }

  double _containerHeight = 115.0;
  int _progress = 0;
  bool showInfo = false, isLongPress = false, isDownloading = false;
  var _containerWidth = 1.sw / 1.5;

  Icon sizeChangeIcon = Icon(
    Icons.fullscreen,
    color: Colors.white,
  );
  BoxFit imageFit = BoxFit.contain;
  bool isFitCover = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          toolbarOpacity: (isLongPress) ? 0.0 : 1.0,
          backgroundColor: Colors.transparent,
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  (isLongPress)
                      ? Colors.transparent
                      : Colors.black.withOpacity(0.8),
                  Colors.transparent,
                ],
              ),
            ),
          ),
          elevation: 0.0,
          iconTheme: IconThemeData(
            color: Colors.white,
          ),
          actions: [
            IconButton(
              icon: sizeChangeIcon,
              onPressed: () {
                setState(() {
                  isFitCover = !isFitCover;
                  imageFit = (isFitCover) ? BoxFit.contain : BoxFit.cover;
                  sizeChangeIcon = (!isFitCover)
                      ? Icon(
                          Icons.fullscreen_exit,
                          color: Colors.white,
                        )
                      : Icon(
                          Icons.fullscreen,
                          color: Colors.white,
                        );
                  print('icon Pressed');
                });
              },
            ),
          ],
        ),
        body: BlocProvider<DetailPageCubit>(
          create: (_) => DetailPageCubit(DetailPageState())
            ..getPhoto(widget.photoData!.id!),
          child: BlocConsumer<DetailPageCubit, DetailPageState>(
            listener: (context, state) {
              if (state.requestStatus == AsyncRequestStatus.error) {
                showSnackBar(context, true, 'error,');
              }
            },
            builder: (context, state) => Stack(
              children: [
                GestureDetector(
                  onLongPressStart: (value) {
                    setState(() {
                      isLongPress = true;
                    });
                  },
                  onLongPressEnd: (value) {
                    setState(() {
                      isLongPress = false;
                    });
                  },
                  child: CachedNetworkImage(
                    imageUrl: widget.photoData!.path!,
                    fit: imageFit,
                    alignment: Alignment.center,
                    width: double.infinity,
                    height: double.infinity,
                    imageBuilder: (context, imageProvider) => Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: imageProvider,
                          fit: imageFit,
                        ),
                      ),
                    ),
                    errorWidget: (context, url, error) => Container(
                      child: Image.asset(
                        "assets/images/placeholder_image.png",
                      ),
                    ),
                    progressIndicatorBuilder:
                        (context, url, downloadProgress) => Center(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'Please wait ...',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          Text(
                            ((downloadProgress.progress ?? 0) * 100)
                                    .toStringAsFixed(0) +
                                '%',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: FractionalOffset.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 50.0),
                    child: buildPhotoActions(context: context),
                  ),
                ),
                if (isDownloading)
                  FadeIn(
                    child: Align(
                      alignment: FractionalOffset.center,
                      child: Container(
                        padding: EdgeInsets.all(24.w),
                        decoration: BoxDecoration(
                          boxShadow: [
                            new BoxShadow(
                              color: Colors.black,
                              blurRadius: 10.0,
                            ),
                          ],
                          borderRadius: BorderRadius.circular(15.0),
                          color: Colors.white,
                        ),
                        child: Text(
                          _progress.toString() + '%',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildPhotoActions({
    required BuildContext context,
    // required Photo photo,
  }) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 200),
      transform: Matrix4.translationValues(
        0,
        (isLongPress) ? (_containerHeight + 150.0) : 0,
        0,
      ),
      decoration: BoxDecoration(
        boxShadow: [
          new BoxShadow(
            color: Colors.black,
            blurRadius: 10.0,
          ),
        ],
        borderRadius: BorderRadius.circular(15.0),
        color: Colors.white,
      ),
      alignment: Alignment.bottomCenter,
      padding: EdgeInsets.fromLTRB(10.w, 10.h, 10.w, 0),
      width: _containerWidth,
      height: _containerHeight,
      child: BlocProvider<DetailPageCubit>(
        create: (_) =>
            DetailPageCubit(DetailPageState())..getPhoto(widget.photoData!.id!),
        child: BlocBuilder<DetailPageCubit, DetailPageState>(
          builder: (context, state) => state.requestStatus ==
                  AsyncRequestStatus.submitting
              ? Center(
                  child: CircularProgressIndicator(
                    color: Colors.black,
                  ),
                )
              : state.photo == null
                  ? SizedBox()
                  : Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              width: 40.0,
                              height: 40.0,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20.0),
                                child: CachedNetworkImage(
                                  imageUrl:
                                      state.photo!.uploader!.avatar!.large!,
                                  errorWidget: (context, url, error) =>
                                      Icon(Icons.person),
                                ),
                              ),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.grey,
                              ),
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            Flexible(
                              child: Column(
                                //mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    state.photo!.uploader!.username!,
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  Text(
                                    state.photo!.uploader!.group!,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Expanded(
                          child: (showInfo)
                              ? extraInfo(photo: state.photo!)
                              : Container(),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            IconButton(
                              icon: Icon(
                                Icons.info,
                              ),
                              tooltip: 'Details',
                              onPressed: () {
                                setState(
                                  () {
                                    showInfo = !showInfo;
                                    print('before _height : $_containerHeight');
                                    (showInfo)
                                        ? _containerHeight += 150.0
                                        : _containerHeight -= 150.0;
                                    print('after _height : $_containerHeight');
                                  },
                                );
                              },
                            ),
                            IconButton(
                              icon: Icon(Icons.file_download),
                              tooltip: 'Download',
                              onPressed: () {
                                if (!isDownloading)
                                  handleDownload(state.photo!.path!);
                              },
                            ),
                            IconButton(
                              icon: Icon(Icons.format_paint),
                              tooltip: 'Apply',
                              onPressed: () =>
                                  handleApply(state.photo!.path!, context),
                            )
                          ],
                        ),
                      ],
                    ),
        ),
      ),
    );
  }

  Widget extraInfo({
    required Photo photo,
  }) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(8.w),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        // mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Divider(
            height: 1.h,
            color: Colors.black,
          ),
          SizedBox(
            height: 4.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Image Id',
                style: new TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Expanded(
                child: Divider(
                  height: 1.h,
                  color: Colors.black26,
                  endIndent: 8.w,
                  indent: 8.w,
                ),
              ),
              Text(
                photo.id!,
                style: new TextStyle(
                  color: Colors.black,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 4.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Image Url',
                style: new TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Expanded(
                child: Divider(
                  height: 1.h,
                  color: Colors.black26,
                  endIndent: 8.w,
                  indent: 8.w,
                ),
              ),
              Container(
                alignment: Alignment.centerRight,
                width: _containerHeight * .4,
                child: RichText(
                  text: new TextSpan(
                    children: [
                      new TextSpan(
                        text: photo.short_url,
                        style: new TextStyle(
                          color: Colors.blue,
                          overflow: TextOverflow.clip,
                        ),
                        recognizer: new TapGestureRecognizer()
                          ..onTap = () {
                            launch(photo.short_url!);
                          },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 4.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Created At',
                style: new TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Expanded(
                child: Divider(
                  height: 1.h,
                  color: Colors.black26,
                  endIndent: 8.w,
                  indent: 8.w,
                ),
              ),
              Text(
                photo.created_at!.split(' ')[0],
                style: new TextStyle(color: Colors.black),
              ),
            ],
          ),
          SizedBox(
            height: 4.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Category',
                style: new TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Expanded(
                child: Divider(
                  height: 1.h,
                  color: Colors.black26,
                  endIndent: 8.w,
                  indent: 8.w,
                ),
              ),
              Text(
                photo.category!,
                style: new TextStyle(
                  color: Colors.black,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 4.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Resolution',
                style: new TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Expanded(
                child: Divider(
                  height: 1.h,
                  color: Colors.black26,
                  endIndent: 8.w,
                  indent: 8.w,
                ),
              ),
              Text(
                photo.resolution!,
                style: new TextStyle(
                  color: Colors.black,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 4.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'View',
                style: new TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Expanded(
                child: Divider(
                  height: 1.h,
                  color: Colors.black26,
                  endIndent: 8.w,
                  indent: 8.w,
                ),
              ),
              Text(
                photo.views!.toString(),
                style: new TextStyle(
                  color: Colors.black,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 4.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Like',
                style: new TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Expanded(
                child: Divider(
                  height: 1.h,
                  color: Colors.black26,
                  endIndent: 8.w,
                  indent: 8.w,
                ),
              ),
              Text(
                photo.favorites!.toString(),
                style: new TextStyle(
                  color: Colors.black,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 4.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Ratio',
                style: new TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Expanded(
                child: Divider(
                  height: 1.h,
                  color: Colors.black26,
                  endIndent: 8.w,
                  indent: 8.w,
                ),
              ),
              Text(
                photo.ratio!.toString(),
                style: new TextStyle(
                  color: Colors.black,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 8.h,
          ),
          Divider(
            height: 1.h,
            color: Colors.black,
          ),
        ],
      ),
    );
  }

  handleDownload(String image) async {
    var localFileLocation;
    try {
      setState(() {
        isDownloading = true;
      });
      var imageId = await ImageDownloader.downloadImage(
        image,
        destination: localFileLocation,
      ).then((value) {
        print('ImageDownloader :: DONE :: $value');

        setState(() {
          isDownloading = false;
        });

        Fluttertoast.showToast(
          msg: "Image Downloaded",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
        );
      });
      print('ImageDownloader :: $imageId ::  ${imageId.toString()}');
    } on PlatformException catch (error) {
      print(error);
    }
  }

  Future<Null> handleApply(String image, BuildContext context) async {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Colors.white,
          title: Text('Set As'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                  title: Text('Home Screen Wallpaper'),
                  onTap: () async {
                    Navigator.of(context).pop();
                    Fluttertoast.showToast(
                      msg: "Setting Home Screen Wallpaper ... ",
                      toastLength: Toast.LENGTH_SHORT,
                      gravity: ToastGravity.BOTTOM,
                    );
                    _setWallpaper(image, WallpaperManagerFlutter.HOME_SCREEN);
                  }),
              ListTile(
                title: Text('Lock Screen Wallpaper'),
                onTap: () async {
                  Fluttertoast.showToast(
                    msg: "Setting Lock Screen Wallpaper ... ",
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.BOTTOM,
                  );
                  _setWallpaper(image, WallpaperManagerFlutter.LOCK_SCREEN);
                },
              ),
            ],
          ),
        );
      },
    );
  }

  Future<void> _setWallpaper(String imageUrl, location) async {
    var file = await DefaultCacheManager().getSingleFile(imageUrl);
    try {
      WallpaperManagerFlutter().setwallpaperfromFile(file, location);
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Wallpaper updated'),
        ),
      );
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Error Setting Wallpaper'),
        ),
      );
      print(e);
    }
  }
}
