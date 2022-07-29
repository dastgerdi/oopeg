import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AdListItem extends StatelessWidget {
  const AdListItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8,0,8,8),
      child: Column(
        children:
        [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                width: 8,
              ),
              Container(
                width: 96,
                height: 96,
                decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: AssetImage('assets/image.jpg'),
                    fit: BoxFit.fill
                  ),
                  // color: CupertinoColors.systemGrey3,
                  borderRadius: BorderRadius.circular(10)
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              SizedBox(
                height: 96,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      text: const TextSpan(
                        text: 'Lorem Ipsum\t',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: CupertinoColors.black
                        ),
                        children: [
                          TextSpan(
                            text: r'3400$',
                            style: TextStyle(
                              color: CupertinoColors.activeGreen,
                              fontSize: 16,
                            )
                          )
                        ]
                      ),
                    ),
                    const Expanded(
                      child: SizedBox()
                    ),
                    const Text(
                      'Vancouver',
                      style: TextStyle(
                          fontSize: 14
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text(
                      '15 minutes ago',
                      style: TextStyle(
                          fontSize: 14
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          const Divider(
            color: CupertinoColors.separator,
          )
        ]
      ),
    );
  }
}
