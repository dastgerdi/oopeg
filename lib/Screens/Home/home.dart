import 'package:flutter/cupertino.dart';
import 'package:oopeg/Widgets/widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {


  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: CustomScrollView(
        slivers: <Widget>[
           const CupertinoSliverNavigationBar(
            leading: Icon(CupertinoIcons.add),
            largeTitle: Text('Oopeg'),
            trailing: Text(
              'Filter',
              style: TextStyle(
                color: CupertinoColors.activeBlue
              ),
            ),
          ),
          SliverPersistentHeader(
            pinned: true,
            floating: false,
            delegate: SliverDelegate(),
          ),
          SliverAnimatedList(
            itemBuilder: (context, index, animation) => const AdListItem(),
            initialItemCount: 17,
          ),
        ],
      ),
    );
  }
}
