import 'package:flutter/material.dart';
import 'package:flutter_health_care_app/appntmake.dart';
import 'package:flutter_health_care_app/theme/light_color.dart';
import 'package:flutter_health_care_app/theme/text_styles.dart';
import 'package:flutter_health_care_app/theme/theme.dart';
import 'package:flutter_health_care_app/widgets/progress_widget.dart';
import 'package:flutter_health_care_app/widgets/rating_star_widget.dart';
import 'package:flutter_health_care_app/theme/extention.dart';
import 'package:flutter_health_care_app/model/doctor_model.dart';
import 'package:flutter_health_care_app/call.dart';
class DetailScreen extends StatefulWidget {
  final DoctorModel model;
  DetailScreen({
    Key key,
    this.model,
  }) : super(key: key);

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailScreen> {
  DoctorModel model;
  @override
  void initState() {
    model = widget.model;
    super.initState();
  }

  Widget _appbar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        BackButton(
          color: Theme.of(context).primaryColor,
        ),
        IconButton(
          icon: Icon(
            model.isfavourite ? Icons.favorite : Icons.favorite_border,
            color: model.isfavourite ? Colors.red : LightColor.grey,
          ),
          onPressed: () {
            setState(() {
              model.isfavourite = !model.isfavourite;
            });
          },
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    TextStyle titleStyle = TextStyles.title.copyWith(fontSize: 25).bold;
    if (AppTheme.fullWidth(context) < 393) {
      titleStyle = TextStyles.title.copyWith(fontSize: 23).bold;
    }
    return Scaffold(
      backgroundColor: LightColor.extraLightBlue,
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: <Widget>[
            Image.asset(model.image),
            DraggableScrollableSheet(
              maxChildSize: .8,
              initialChildSize: .6,
              minChildSize: .6,
              builder: (context, scrollController) {
                return Container(
                  height: AppTheme.fullHeight(context) * .5,
                  padding: EdgeInsets.only(
                    left: 19,
                    right: 19,
                    top: 16,
                  ), //symmetric(horizontal: 19, vertical: 16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                    color: Colors.white,
                  ),
                  child: SingleChildScrollView(
                    physics: BouncingScrollPhysics(),
                    controller: scrollController,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        ListTile(
                          title: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                model.name,
                                style: titleStyle,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Icon(
                                Icons.check_circle,
                                size: 18,
                                color: Colors.indigoAccent,
                              ),
                              Spacer(),
                              Padding(
                                padding: const EdgeInsets.only(right: 10),
                                child: RatingStarWidget(
                                  rating: model.rating,
                                ),
                              ),
                            ],
                          ),
                          subtitle: Text(
                            model.type,
                            style: TextStyles.bodySm.subTitleColor.bold,
                          ),
                        ),
                        Divider(
                          thickness: .3,
                          color: LightColor.grey,
                        ),
                        Row(
                          children: <Widget>[
                            ProgressWidget(
                              value: model.goodReviews,
                              totalValue: 100,
                              activeColor: Colors.lightBlue,
                              backgroundColor: LightColor.grey.withOpacity(.3),
                              title: "Good Review",
                              durationTime: 500,
                            ),
                            ProgressWidget(
                              value: model.totalScore,
                              totalValue: 100,
                              activeColor: Colors.blue,
                              backgroundColor: LightColor.grey.withOpacity(.3),
                              title: "Total Score",
                              durationTime: 300,
                            ),
                            ProgressWidget(
                              value: model.satisfaction,
                              totalValue: 100,
                              activeColor: Colors.blueAccent,
                              backgroundColor: LightColor.grey.withOpacity(.3),
                              title: "Satisfaction",
                              durationTime: 800,
                            ),
                          ],
                        ),
                        Divider(
                          thickness: .3,
                          color: LightColor.grey,
                        ),
                        Text("About", style: titleStyle).vP16,
                        Text(
                          model.description,
                          style: TextStyles.body.subTitleColor,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                         GestureDetector(
                           onTap:(){Navigator.push(
                             context,
                             MaterialPageRoute(builder: (context) => MakeCall()),
                           );
                             },

                         //  child: Container(
                           //   height: 45,
                             // width: 45,
                             // decoration: BoxDecoration(
                               // borderRadius: BorderRadius.circular(10),
                               // color: Colors.black,
                              //),
                            child: TextButton.icon(     // <-- TextButton
                               onPressed: () {
                                 Navigator.push(
                                 context,
                                 MaterialPageRoute(builder: (context) => MakeCall()),
                               );
                               },

                               icon: Icon(
                                 Icons.call,
                                 size: 30,
                                 color: Colors.green,
                               ),
                               label: Text(''),
                             ).ripple(
                              () {},
                              borderRadius: BorderRadius.circular(10),
                            ),
                         ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              height: 45,
                              width: 45,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.black,
                              ),
                              child: Icon(
                                Icons.chat_bubble,
                                color: Colors.red,
                              ),
                            )

                            .ripple(
                              () {},
                              borderRadius: BorderRadius.circular(10),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              height: 45,
                              decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(10)),
                              child: TextButton(
                                onPressed: () {Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) =>  Homeappt()),
                                );
                                  },
                                child: Text(
                                  "Make an appointment",
                                  style: TextStyles.titleNormal.white,
                                ),
                              ),
                            ),
                          ],
                        ).vP16
                      ],
                    ),
                  ),
                );
              },
            ),
            _appbar(),
          ],
        ),
      ),
    );
  }
}
