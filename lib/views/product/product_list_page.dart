
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:flutterapp/model/page.dart';
import 'package:flutterapp/model/product.dart';
import 'package:flutterapp/utils/data_utils.dart';
import 'package:flutterapp/views/product/product_class_page.dart';

class ProductListPage extends StatefulWidget {

  final int courseType;

  ProductListPage(this.courseType);

  @override
  State<ProductListPage> createState() => new _ProductListPage();
}

class _ProductListPage extends State<ProductListPage> {


  ScrollController _scrollController = new ScrollController();

  List<Product> _recommendList = [];

  Page _page;

  int _pageNum = 1;

  int _pageSize = 5;

  List<dynamic> _list = [];

  @override
  void initState() {
    super.initState();
    DataUtils.getProductRecommendList(widget.courseType).then((r) {
      if(mounted) {
        setState(() {
          _recommendList.addAll(r);
        });
      }
    });

    _getList();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _getList() async {
    DataUtils.getProductList(_pageNum, _pageSize, null, null, widget.courseType).then((r) {
      if(mounted) {
        setState(() {
          _page = r;
          _list.addAll(_page.dataList);
        });
      }
    });
  }


  @override
  Widget build(BuildContext context) {
    return new RefreshIndicator(
      color: Color.fromRGBO(244, 245, 247, 1),
      child: new CustomScrollView(
        physics: new AlwaysScrollableScrollPhysics(),
        controller: _scrollController,
        slivers: <Widget>[
          new SliverToBoxAdapter(
            child: new Container(
              child: _bannerView(),
            ),
          ),

          new SliverToBoxAdapter(
            child:
            new Container(
                margin: EdgeInsets.only(top: 12),
                color: Color.fromRGBO(255, 255, 255, 1),
                child: new Container(
                  width: 90,
                  height: 25,
                  margin: EdgeInsets.only(top: 16, bottom: 16, left: 12),
                  child: new Text(
                    "所有教师培训",
                    style: new TextStyle(
                      fontSize: 16,
                      color: Color.fromRGBO(0, 0, 0, 1),
                      //字体粗细  粗体和正常
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                )
            ),
          ),
          null != _list ?
          new SliverList(
            delegate: new SliverChildBuilderDelegate(
                  (context, index) {
                return new ProductClassPage(
                    Product.fromMap(_list[index]));
              },
              childCount: _list.length,
            ),
          ) : new SliverToBoxAdapter(),

        ],
      ),
      onRefresh: _handleRefresh,
    );
  }


  Widget _bannerView() {
    if(_recommendList.length > 0) {
      return new Container(
        child: new Container(
          child: new Swiper(
            itemWidth: 315,
            itemHeight: 394,
            itemCount: _recommendList.length,
            itemBuilder: (BuildContext context, int index) {
              return new Image.network(
                _recommendList[index].listImage,
                fit: BoxFit.fill,
              );
            },
            pagination: new SwiperPagination(),
            control: new SwiperControl(),
            viewportFraction: 0.8, // 当前视窗展示比例 小于1可见上一个和下一个视窗
            scale: 0.9, // 两张图片之间的间隔
          ),
          height: 394,
        ),
      );
    }
    return new Container();
  }

  Future<Null> _handleRefresh() async {

    await Future.delayed(Duration(seconds: 1), () {
      _pageNum = 1;
      _list = [];
      _getList();
    });

  }
}