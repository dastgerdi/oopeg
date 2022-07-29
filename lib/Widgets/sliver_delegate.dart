import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SliverDelegate extends SliverPersistentHeaderDelegate{

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      color: CupertinoTheme.of(context).barBackgroundColor,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            const Padding(
              padding: EdgeInsets.all(16),
              child: CupertinoSearchTextField(
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index){
                  if (index == 0) {
                    return Padding(
                      padding: const EdgeInsets.fromLTRB(16, 0, 8, 16),
                      child: Container(
                        decoration: BoxDecoration(
                            color: CupertinoColors.white,
                            borderRadius: BorderRadius.circular(100),
                            border: Border.all(
                                color: CupertinoColors.systemGrey3
                            )
                        ),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 16.0),
                            child: Text(
                              'Category $index',
                              style: const TextStyle(
                                fontSize: 14,
                                color: CupertinoColors.activeBlue,
                              ),
                            ),
                          ),
                        )
                      ),
                    );
                  } else {
                    return Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 8, 16),
                      child: Container(
                        decoration: BoxDecoration(
                            color: CupertinoColors.white,
                            borderRadius: BorderRadius.circular(100),
                            border: Border.all(
                                color: CupertinoColors.systemGrey3
                            )
                        ),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 16.0),
                            child: Text(
                              'Category $index',
                              style: const TextStyle(
                                fontSize: 14,
                                color: CupertinoColors.activeBlue,
                              ),
                            ),
                          ),
                        )
                      ),
                    );
                  }
                },
                itemCount: 12,
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
              ),
            ),
          ],
        )
      ),
    );
  }

  @override
  double get maxExtent => 120;

  @override
  double get minExtent => 120;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
  
}