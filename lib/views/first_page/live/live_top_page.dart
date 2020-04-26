import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class LiveTopPage extends StatefulWidget {
  @override
  State<LiveTopPage> createState() => _LiveTopPage();
}

class _LiveTopPage extends State<LiveTopPage> {
  @override
  Widget build(BuildContext context) {
    return new ListView(
      children: <Widget>[
        new Container(
          child: new Container(
            child: new Swiper(
              itemWidth: MediaQuery.of(context).size.width,
              itemHeight: 212,
              itemCount: 3,
              itemBuilder: (BuildContext context, int index) {
                return new Image.network(
                  "https://lianks-picture-uat.oss-cn-beijing.aliyuncs.com/lianks-images/20200420/de2c7d11-0898-4e88-bd2c-28b25524e862.png",
                  fit: BoxFit.fitHeight,
                );
              },
              pagination: new SwiperPagination(),
              control: new SwiperControl(),
            ),
            height: 212,
          ),
        ),
        new Container(
          height: 24,
          margin: EdgeInsets.only(top: 4),
          child: new LivingLabel(),
        ),
        new Container(
            child: new LivingClass())
      ],
    );
  }
}

class LivingClass extends StatefulWidget {

  @override
  State<LivingClass> createState() => new _LivingClass();
}

class _LivingClass extends State<LivingClass> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new Container(

      color: Color.fromRGBO(255, 255, 255, 1),
      width: MediaQuery.of(context).size.width,
      child: new Row(
        children: <Widget>[
          new Expanded(
            flex: 33,
            child: new Stack(
              alignment:Alignment.center,
              children: <Widget>[
                new Container(
                  child: new Image.network("https://lianks-picture-uat.oss-cn-beijing.aliyuncs.com/lianks-images/20200421/9e9f936d-67f1-4a5e-819e-851e3b1b8874.jpg?x-oss-process=style/w700",
                    width: 112,
                    height: 63,
                  ),
                  margin: EdgeInsets.only(left: 12, top: 12, right: 0),
                ),
                new Positioned(
                  child: new Opacity(
                    opacity: 0.1,
                    child: new Container(
                      width: 112,
                      height: 13,
                      color: Color.fromRGBO(0, 0, 0, 1),
                    ),
                  ),
                  bottom: 1,
                  left: 12,
                ),
                new Positioned(
                  child: new Text("Angelina",
                    style: new TextStyle(
                        color: Color.fromRGBO(255, 255, 255, 1),
                        fontSize: 10
                    ),
                  ),
                  bottom: 1,
                  left: 15,
                ),
                new Positioned(
                  child: new Opacity(
                    opacity: 1,
                    child: new Container(
                      width: 47,
                      height: 13,
                      color: Color.fromRGBO(0, 0, 0, 0.5),
                      child: new Align(
                        alignment: Alignment.center,
                        child: new Text("1天后直播",
                          style: new TextStyle(
                            color: Color.fromRGBO(246, 246, 246, 1),
                            fontSize: 9,
                          ),
                        ),
                      ),
                    ),
                  ),
                  bottom: 1,
                  left: 77,
                ),
              ],
            )
          ),
          new Expanded(
            flex: 67,
            child: new Container(
              height: 63,
              child: new Column(
                children: <Widget>[
                  new Container(
                    height: 20,
                    width: double.infinity,
                    margin: EdgeInsets.only(bottom: 4, left: 9, top: 4),
                    child: new Text("D1打造性感完美腰臀比",
                      style: new TextStyle(
                        fontSize: 14,
                        color: Color.fromRGBO(74, 74, 74, 1),
                      ),
                    ),
                  ),
                  new Container(
                    height: 17,
                    width: double.infinity,
                    margin: EdgeInsets.only(bottom: 5, left: 8),
                    child: new Text("系列课：打造完美曲线系列课",
                      style: new TextStyle(
                        fontSize: 12,
                        color: Color.fromRGBO(96, 96, 96, 1),
                      ),
                    ),
                  ),
                  new Expanded(
                    child: new Container(
                      height: 17,
                      width: double.infinity,
                      margin: EdgeInsets.only(left: 8),
                      child: new Stack(
                        children: <Widget>[
                          new Positioned(
                            child: new Text("10.25 16:20 188人报名",
                              style: new TextStyle(
                                fontSize: 12,
                                color: Color.fromRGBO(96, 96, 96, 1),
                              ),
                            ),
                            bottom: 0,
                          ),
                          new Positioned(
                            child: new Container(
                              margin: EdgeInsets.only(right: 8),
                              child: new Text("¥628",
                                style: new TextStyle(
                                  fontSize: 12,
                                  color: Color.fromRGBO(169, 169, 169, 1),
                                ),
                              ),
                            ),
                            right: 66,
                          ),
                          new Positioned(
                            child: new Text("¥299.00",
                              style: new TextStyle(
                                fontSize: 13,
                                color: Color.fromRGBO(146, 101, 0, 1),
                              ),
                            ),
                            right: 16,
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ),
        ],
      ),
    );
  }
}

class LivingLabel extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new Container(
      color: Color.fromRGBO(255, 169, 0, 1),
      height: 24,
      child: new Row(
        children: <Widget>[
          new Flexible(
              flex: 1,
              child: new Align(
                alignment: Alignment.bottomLeft,
                child: new Stack(
                  children: <Widget>[
                    new Positioned(
                      child: Image.asset("assets/images/icon/default/sanjiao@3x.png",
                        width: 11, height: 8,),
                      bottom: 0,
                      left: 12,
                    )
                  ],
                ),
              )
          ),
          new Flexible(
              flex: 2,
              child: new Align(
                alignment: Alignment.center,
                child: new Text(
                  "直播中...",
                  style: new TextStyle(
                    fontSize: 12,
                    color: Color.fromRGBO(255, 255, 255, 1),
                    wordSpacing: 0,
                    letterSpacing: 0,
                  ),
                ),
              )),
          new Flexible(
              flex: 1,
              child: new Align(
                alignment: Alignment.centerRight,
                child: new Container(
                  width: 48,
                  height: 15,
                  decoration: new BoxDecoration(
                    border: new Border.all(color: Color.fromRGBO(255, 255, 255, 1), width: .5),
                    borderRadius: new BorderRadius.circular(10.5),
                  ),
                  margin: EdgeInsets.only(top: 5, bottom: 4, right: 12),
                  child: new Container(
                    width: 32,
                    height: 11,
                    margin: EdgeInsets.only(top: 2, bottom: 2, right: 8, left: 8),
                    child: new Text(
                      "查看全部",
                      textAlign: TextAlign.left,
                      softWrap: false,
                      maxLines: 1,
                      textScaleFactor: 1,
                      style: new TextStyle(
                        fontSize: 8,
                        color: Color.fromRGBO(255, 255, 255, 1),
                        wordSpacing: 0,
                        letterSpacing: 0,
                      ),
                    ),
                  ),
                ),
              )
          ),
        ],
      ),
    );
  }
}