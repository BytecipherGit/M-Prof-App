import '../core_utils/export_dependency.dart';

class DefaultAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final Widget? child;
  final List<Widget>? action;
  const DefaultAppBar({
    super.key,
    required this.title,
    this.child,
    this.action,
  });

  @override
  Size get preferredSize => Size.fromHeight(AppDimens.height70);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title, style: AppStyle.alarmTitleTextStyle),
      centerTitle: true,
      elevation: 0,
      leading: child,
      actions: action,
      toolbarHeight: AppDimens.height70,
      flexibleSpace: Stack(
        children: [
          Container(
            height: AppDimens.height120,
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                    Color.fromRGBO(34, 68, 163, 1),
                    Color.fromRGBO(24, 38, 88, 1)
                  ],
                ),
                image: DecorationImage(
                    image: AssetImage("assets/images/forget-bg-image.png"),
                    fit: BoxFit.fill)),
          ),
        ],
      ),
    );
  }
}
