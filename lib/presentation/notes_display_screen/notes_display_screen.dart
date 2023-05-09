import 'dart:ffi';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:travelogue_app/presentation/login_screen/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:travelogue_app/core/app_export.dart';

class NotesDisplayScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: StreamBuilder<QuerySnapshot<Map<String, dynamic>>>(
                stream: FirebaseFirestore.instance.collection('users').doc(currentUserName).collection('userNotes').snapshots(),
                builder: (context, AsyncSnapshot<QuerySnapshot> snapshot){
                  if(snapshot.hasError){
                    return Text('Something went wrong');
                  }if (snapshot.connectionState == ConnectionState.waiting){
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }if (snapshot.hasData){
                    return ListView.builder(
                      itemCount: snapshot.data!.docs.length,
                      itemBuilder: (context, index){
                        return Container(
                            height: size.height,
                            width: double.maxFinite,
                            child: Stack(alignment: Alignment.center, children: [
                              CustomImageView(
                                  imagePath: ImageConstant.imgWavess1,
                                  height: getVerticalSize(844),
                                  width: getHorizontalSize(390),
                                  alignment: Alignment.center),
                              Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                      height: size.height,
                                      width: double.maxFinite,
                                      child:
                                      Stack(alignment: Alignment.topCenter, children: [
                                        Align(
                                            alignment: Alignment.topCenter,
                                            child: Padding(
                                                padding: getPadding(left: 16, right: 17),
                                                child: Column(
                                                    mainAxisSize: MainAxisSize.min,
                                                    mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                    children: [
                                                      Padding(
                                                          padding:
                                                          getPadding(left: 4, right: 2),
                                                          child: Row(
                                                              mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                              children: [
                                                                CustomImageView(
                                                                    imagePath: ImageConstant
                                                                        .imgAllnotes,
                                                                    height:
                                                                    getVerticalSize(33),
                                                                    width:
                                                                    getHorizontalSize(
                                                                        157),
                                                                    margin: getMargin(
                                                                        top: 45,
                                                                        bottom: 11)),
                                                                GestureDetector(
                                                                    onTap: () {
                                                                      onTapNew(context);
                                                                    },
                                                                    child: Card(
                                                                        clipBehavior:
                                                                        Clip.antiAlias,
                                                                        elevation: 0,
                                                                        margin:getMargin(
                                                                            top: 45,
                                                                            bottom: 11),
                                                                        color: ColorConstant
                                                                            .blueGray200,
                                                                        shape: RoundedRectangleBorder(
                                                                            side: BorderSide(
                                                                                color: ColorConstant
                                                                                    .teal700,
                                                                                width:
                                                                                getHorizontalSize(
                                                                                    1)),
                                                                            borderRadius:
                                                                            BorderRadiusStyle
                                                                                .roundedBorder8),
                                                                        child: Container(
                                                                            height:
                                                                            getSize(55),
                                                                            width:
                                                                            getSize(55),
                                                                            padding: getPadding(
                                                                                left: 3,
                                                                                top: 5,
                                                                                right: 3,
                                                                                bottom: 5),
                                                                            decoration: AppDecoration
                                                                                .outlineTeal700
                                                                                .copyWith(
                                                                                borderRadius: BorderRadiusStyle
                                                                                    .roundedBorder8),
                                                                            child: Stack(
                                                                                children: [
                                                                                  CustomImageView(
                                                                                    imagePath: ImageConstant
                                                                                        .imgNotes,
                                                                                    height: getSize(
                                                                                        44),
                                                                                    width: getSize(
                                                                                        44),
                                                                                    alignment:
                                                                                    Alignment.centerRight,
                                                                                  )
                                                                                ]))))
                                                              ])),
                                                      new ListTile(
                                                        shape: RoundedRectangleBorder(
                                                            side: BorderSide(width: 2),
                                                            borderRadius: BorderRadius.circular(20)
                                                        ),
                                                        title: Text(snapshot.data!.docs[index].get('noteTitle'), textScaleFactor: 1.5,),
                                                        subtitle: Text(snapshot.data!.docs[index].get('noteDate')),

                                                      ),]))),
                                        CustomImageView(
                                            imagePath: ImageConstant.imgNavigationbar,
                                            height: getVerticalSize(38),
                                            width: getHorizontalSize(390),
                                            alignment: Alignment.topCenter),
                                        CustomImageView(
                                            imagePath: ImageConstant.imgProfile,
                                            height: getSize(39),
                                            width: getSize(39),
                                            alignment: Alignment.topRight,
                                            margin: getMargin(right: 8),
                                            onTap: () {
                                              onTapImgProfile(context);
                                            })
                                      ]))),
                            ]));
                      },
                    );
                  }else{
                    return ListView.builder(
                      itemCount: snapshot.data!.docs.length,
                      itemBuilder: (context, index){
                        return Container(
                            height: size.height,
                            width: double.maxFinite,
                            child: Stack(alignment: Alignment.center, children: [
                              CustomImageView(
                                  imagePath: ImageConstant.imgWavess1,
                                  height: getVerticalSize(844),
                                  width: getHorizontalSize(390),
                                  alignment: Alignment.center),
                              Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                      height: size.height,
                                      width: double.maxFinite,
                                      child:
                                      Stack(alignment: Alignment.topCenter, children: [
                                        Align(
                                            alignment: Alignment.topCenter,
                                            child: Padding(
                                                padding: getPadding(left: 16, right: 17),
                                                child: Column(
                                                    mainAxisSize: MainAxisSize.min,
                                                    mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                    children: [
                                                      Padding(
                                                          padding:
                                                          getPadding(left: 4, right: 2),
                                                          child: Row(
                                                              mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                              children: [
                                                                CustomImageView(
                                                                    imagePath: ImageConstant
                                                                        .imgAllnotes,
                                                                    height:
                                                                    getVerticalSize(33),
                                                                    width:
                                                                    getHorizontalSize(
                                                                        157),
                                                                    margin: getMargin(
                                                                        top: 45,
                                                                        bottom: 11)),
                                                                GestureDetector(
                                                                    onTap: () {
                                                                      onTapNew(context);
                                                                    },
                                                                    child: Card(
                                                                        clipBehavior:
                                                                        Clip.antiAlias,
                                                                        elevation: 0,
                                                                        margin:getMargin(
                                                                            top: 45,
                                                                            bottom: 11),
                                                                        color: ColorConstant
                                                                            .blueGray200,
                                                                        shape: RoundedRectangleBorder(
                                                                            side: BorderSide(
                                                                                color: ColorConstant
                                                                                    .teal700,
                                                                                width:
                                                                                getHorizontalSize(
                                                                                    1)),
                                                                            borderRadius:
                                                                            BorderRadiusStyle
                                                                                .roundedBorder8),
                                                                        child: Container(
                                                                            height:
                                                                            getSize(55),
                                                                            width:
                                                                            getSize(55),
                                                                            padding: getPadding(
                                                                                left: 3,
                                                                                top: 5,
                                                                                right: 3,
                                                                                bottom: 5),
                                                                            decoration: AppDecoration
                                                                                .outlineTeal700
                                                                                .copyWith(
                                                                                borderRadius: BorderRadiusStyle
                                                                                    .roundedBorder8),
                                                                            child: Stack(
                                                                                children: [
                                                                                  CustomImageView(
                                                                                    imagePath: ImageConstant
                                                                                        .imgNotes,
                                                                                    height: getSize(
                                                                                        44),
                                                                                    width: getSize(
                                                                                        44),
                                                                                    alignment:
                                                                                    Alignment.centerRight,
                                                                                  )
                                                                                ]))))
                                                              ])),
                                                      Text('No Notes'),]))),
                                        CustomImageView(
                                            imagePath: ImageConstant.imgNavigationbar,
                                            height: getVerticalSize(38),
                                            width: getHorizontalSize(390),
                                            alignment: Alignment.topCenter),
                                        CustomImageView(
                                            imagePath: ImageConstant.imgProfile,
                                            height: getSize(39),
                                            width: getSize(39),
                                            alignment: Alignment.topRight,
                                            margin: getMargin(right: 8),
                                            onTap: () {
                                              onTapImgProfile(context);
                                            })
                                      ]))),
                            ]));
                      },
                    );
                  }

                }
            )));
  }

  onTapNew(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.createNotesScreen);
  }

  onTapImgProfile(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.profileScreen);
  }
}
