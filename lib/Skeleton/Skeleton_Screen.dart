// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:skeletons/skeletons.dart';

class SkeletonScreen extends StatefulWidget {
  const SkeletonScreen({super.key});

  @override
  State<SkeletonScreen> createState() => _SkeletonScreenState();
}

class _SkeletonScreenState extends State<SkeletonScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: InkWell(
            onTap: () {
              Get.back();
            },
            child: const Icon(
              Icons.arrow_back,
              size: 24,
              color: Colors.white,
            )),
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: Hero(
          tag: 'skeleton',
          child: Text(
            'Skeleton',
            style: GoogleFonts.poppins(
              decoration: TextDecoration.none,
              textStyle: const TextStyle(
                fontSize: 28,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
      body: Center(
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              padding: const EdgeInsets.all(8.0),
              decoration: const BoxDecoration(color: Colors.white),
              child: SkeletonItem(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SkeletonAvatar(
                        style: SkeletonAvatarStyle(width: 170, height: 35),
                      ),
                      SkeletonAvatar(
                        style: SkeletonAvatarStyle(width: 70, height: 35),
                      ),
                    ],
                  ),
                  const SizedBox(height: 5),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: SkeletonParagraph(
                      style: SkeletonParagraphStyle(
                          lines: 1,
                          lineStyle: SkeletonLineStyle(
                            randomLength: true,
                            height: 20,
                            borderRadius: BorderRadius.circular(8),
                            minLength: MediaQuery.of(context).size.width / 2,
                            maxLength: MediaQuery.of(context).size.width / 1,
                          )),
                    ),
                  ),
                  const SizedBox(height: 5),
                  SkeletonParagraph(
                    style: SkeletonParagraphStyle(
                        lines: 1,
                        lineStyle: SkeletonLineStyle(
                          randomLength: true,
                          height: 20,
                          borderRadius: BorderRadius.circular(8),
                          minLength: MediaQuery.of(context).size.width / 2,
                        )),
                  ),
                  const SizedBox(height: 15),
                  const SkeletonAvatar(
                    style: SkeletonAvatarStyle(
                        width: double.infinity, height: 160),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const SkeletonAvatar(
                          style: SkeletonAvatarStyle(width: 125, height: 30)),
                      SkeletonLine(
                        style: SkeletonLineStyle(
                            height: 40,
                            width: 115,
                            borderRadius: BorderRadius.circular(8)),
                      )
                    ],
                  )
                ],
              )),
            ),
          ),
        ),
      ),
    ));
  }
}
