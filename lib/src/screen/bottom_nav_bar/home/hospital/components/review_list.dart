import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:m_proof/src/view_model_providers/home_vm/home_view_model.dart';

import '../../../../../core_utils/export_dependency.dart';
import '../../../../../network/models/response/dummy/review_list.dart';

class ReviewCard extends StatelessWidget {
  final ReviewList reviewList;
  final HomeProviderVm homeProviderVm;
  const ReviewCard(
      {super.key, required this.reviewList, required this.homeProviderVm});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(AppDimens.width10),
      margin: EdgeInsets.symmetric(vertical: AppDimens.height10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppDimens.radius10),
        color: Colors.white,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    height: AppDimens.height40,
                    width: AppDimens.height40,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            reviewList.userImage!,
                          ),
                          fit: BoxFit.fill,
                        ),
                        borderRadius: BorderRadius.circular(
                          50,
                        )),
                  ),
                  SizedBox(
                    width: AppDimens.width10,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        reviewList.userName.toString(),
                        style: AppStyle.reviewerNameTextStyle,
                      ),
                      Text(
                        homeProviderVm.timeAgo(reviewList.timestamp!),
                        style: AppStyle.reviewTimeAgoTextTextStyle,
                      ),
                    ],
                  ),
                ],
              ),
              RatingBar.builder(
                initialRating: reviewList.rating ?? 1.0,
                minRating: 1,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemPadding: EdgeInsets.zero,
                itemCount: 5,
                updateOnDrag: false,
                glow: false,
                ignoreGestures: true,
                itemBuilder: (context, _) => const Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                onRatingUpdate: (rating) {
                  AppLogger.logger.d(rating);
                },
                itemSize: 14.0,
              )
            ],
          ),
          SizedBox(
            height: AppDimens.height3,
          ),
          Text(
            reviewList.comment.toString(),
            style: AppStyle.reviewCommentTextTextStyle,
          ),
        ],
      ),
    );
  }
}
