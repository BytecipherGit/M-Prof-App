import 'package:lottie/lottie.dart';
import '../core_utils/export_dependency.dart';

class NoInternet extends StatelessWidget {
  const NoInternet({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: MediaQuery.of(context).size.height * 0.65,
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(horizontal: AppDimens.width10),
        child: Lottie.asset('assets/no_internet.json'),
      ),
    );
  }
}
