// ignore_for_file: deprecated_member_use, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_getx_base/shared/utils/size_utils.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../widgets/normal_button.dart';

class BottomBarItem {
  BottomBarItem({this.iconData, this.text});
  String? iconData;
  String? text;
}

class CustomBottomNavigationBar extends StatefulWidget {
  CustomBottomNavigationBar({
    required this.items,
    this.centerItemText,
    this.height = 60.0,
    this.iconSize = 24.0,
    this.backgroundColor,
    this.color,
    this.selectedColor,
    this.notchedShape,
    required this.onTabSelected,
    required this.selectedIndex,
  }) {
    assert(this.items.length == 2 || this.items.length == 4);
  }

  final List<BottomBarItem> items;
  final String? centerItemText;
  final double? height;
  final double? iconSize;
  final Color? backgroundColor;
  final Color? color;
  final Color? selectedColor;
  final NotchedShape? notchedShape;
  final Function onTabSelected;
  int selectedIndex;

  @override
  State<StatefulWidget> createState() => CustomBottomNavigationBarState();
}

class CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  Widget _buildTabItem({
    BottomBarItem? item,
    int? index,
    required ValueChanged<int?> onPressed,
  }) {
    Color? color =
        widget.selectedIndex == index ? widget.selectedColor : widget.color;

    return Expanded(
      child: SizedBox(
        height: widget.height,
        child: Material(
          type: MaterialType.transparency,
          child: NormalButton(
            color: Colors.transparent,
            onPressed: () {
              widget.selectedIndex = index!;
              widget.onTabSelected(index);
            },
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: getPadding(bottom: 5),
                  child: SvgPicture.asset(item?.iconData ?? '', color: color),
                ),
                Text(
                  item?.text ?? '',
                  style: TextStyle(
                    color: color,
                    fontSize: getSize(12),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> items = List.generate(widget.items.length, (int index) {
      return _buildTabItem(
        item: widget.items[index],
        index: index,
        onPressed: (int? index) {
          widget.selectedIndex = index!;
          widget.onTabSelected(index);
        },
      );
    });
    // items.insert(items.length >> 1, _buildMiddleTabItem());

    return BottomAppBar(
      shape: widget.notchedShape,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: items,
      ),
      color: widget.backgroundColor,
    );
  }

  Widget _buildMiddleTabItem() {
    return Expanded(
      child: SizedBox(
        height: widget.height,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: widget.iconSize),
            Text(
              widget.centerItemText ?? '',
              style: TextStyle(color: widget.color),
            ),
          ],
        ),
      ),
    );
  }
}
