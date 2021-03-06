import 'package:fluro/fluro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_lianks/views/user/collection/my_collection_product.dart';
import 'package:flutter_lianks/views/user/collection/my_collection_teacher.dart';
import 'package:flutter_lianks/views/user/order/my_order_main_page.dart';
import 'package:flutter_lianks/views/user/product/my_product_main_page.dart';
import 'package:flutter_lianks/views/user/login_page.dart';
import 'package:flutter_lianks/views/video/live_video_page.dart';
import 'package:flutter_lianks/views/web/web_detail_page.dart';

var webDetailHandler = new Handler(
  handlerFunc: (BuildContext context, Map<String, List<String>> params) {
    if(null == params["showShare"] || null == params["showShare"].first || "" == params["showShare"].first) {
      return new WebDetailPage(params["url"].first, params["title"].first, showShare: 0,);
    } else {
      return new WebDetailPage(params["url"].first, params["title"].first, showShare: 1,);
    }
  },
);

var loginHandler = new Handler(
  handlerFunc: (BuildContext context, Map<String, List<String>> params) {
    return new LoginPage();
  },
);

var myProductHandler = new Handler(
  handlerFunc: (BuildContext context, Map<String, List<String>> params) {
    return new MyProductMainPage(params['title'].first, int.parse(params['type'].first));
  },
);

var myCollectionProductHandler = new Handler(
  handlerFunc: (BuildContext context, Map<String, List<String>> params) {
    return new MyCollectionProductPage();
  },
);

var myCollectionTeacherHandler = new Handler(
  handlerFunc: (BuildContext context, Map<String, List<String>> params) {
    return new MyCollectionTeacher();
  },
);

var myOrderHandler = new Handler(
  handlerFunc: (BuildContext context, Map<String, List<String>> params) {
    return new MyOrderMainPage();
  },
);

var LiveVideoHandler = new Handler(
  handlerFunc: (BuildContext context, Map<String, List<String>> params) {
    return new LiveVideoPage(params['url'].first);
  },
);
