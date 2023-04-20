import 'package:flutter/cupertino.dart';
import 'package:loading_more_list/loading_more_list.dart';

class GlowNotificationContainer extends StatefulWidget {
  dynamic? child;
  List? infoData = [];
  dynamic listKey;

  GlowNotificationContainer(
      {Key? key, this.listKey, required this.child, required this.infoData})
      : super(key: key);

  @override
  State<GlowNotificationContainer> createState() =>
      _GlowNotificationContainerState();
}

class _GlowNotificationContainerState extends State<GlowNotificationContainer> {
  @override
  Widget build(BuildContext context) {
    return GlowNotificationWidget(
      ListView.builder(
        //store Page state
        // key: const PageStorageKey<String>('Tab0'),
        key: widget.listKey != null
            ? PageStorageKey<String>(widget.listKey)
            : UniqueKey(),
        padding: const EdgeInsets.all(0.0),
        physics: const ClampingScrollPhysics(),
        itemBuilder: (BuildContext c, int i) {
          return widget.child(i) ?? Container();
        },
        itemCount: widget.infoData?.length ?? 0,
      ),
      showGlowLeading: false,
    );
  }
}
