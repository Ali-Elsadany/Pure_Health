import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/utils/app_assets.dart';
import '../../../core/utils/app_colors.dart';

class HistoryContainer extends StatelessWidget {
  const HistoryContainer({super.key,
    this.imageOfDoc,
    required this.docName,
    required this.day,
    required this.time});

  final Image? imageOfDoc;
  final String docName;
  final String day;
  final String time;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 170.h,
        width: 388.w,
        decoration: BoxDecoration(
          color: AppColors.secondary,
          borderRadius: BorderRadius.circular(16),
        ),
        child:
        Row(
          children: [
            Container(
              height: 170.h,
              width: 319.w,
              decoration:  BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: AppColors.primary,
              ),

              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      height: 160.h,
                      width: 114.w,
                      child: imageOfDoc,
                    ),
                  ),
                  SizedBox(
                    width: 5.w,
                  ),

                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(docName,style: const TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 20,),),
                      SizedBox(height: 5.h,),
                      Text(day,style: const TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 16,),),
                      SizedBox(height: 5.h,),
                      Text(time,style: const TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 16,),)
                    ],
                  ),


                ],
              ),
            ),
            SizedBox(
              width: 5.w,
            ),
            IconButton(onPressed: (){

            },
                icon: SizedBox(
                  width: 30.w,
                  height: 30.h,
                  child: Image.asset(AppAssets.trash),
                )
            ),
          ],
        )
    );
  }
}