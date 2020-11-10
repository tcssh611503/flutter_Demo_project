import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

void main() => runApp(MyApp());

const MaterialColor customSwatch = const MaterialColor(
  0xFFA4C639,
  const <int, Color>{
    50: const Color(0xFFF4F8E7),
    100: const Color(0xFFE4EEC4),
    200: const Color(0xFFD2E39C),
    300: const Color(0xFFBFD774),
    400: const Color(0xFFB2CF57),
    500: const Color(0xFFA4C639),
    600: const Color(0xFF9CC033),
    700: const Color(0xFF92B92C),
    800: const Color(0xFF89B124),
    900: const Color(0xFF78A417),
  },
);





class MyApp extends StatelessWidget {

  var axs ='flutter_swiper Demo';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //名稱
      title: 'Flutter Demo',
      theme: ThemeData(
        // primarySwatch: Colors.blue,
        primarySwatch: customSwatch,
      ),
      //app首頁名稱
      home: MyHomePage(title: axs),
    );
  }
}
class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  List imgList = [
    "https://live.staticflickr.com/844/29778672928_79d9fde5af_b.jpg",
    "https://live.staticflickr.com/838/42740576115_8391acda8b_b.jpg",
    "https://live.staticflickr.com/1774/29151308127_94a5de95f3_b.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Swiper(
        itemBuilder: (BuildContext context,int index){
          return Image.network(
              imgList[index],
              fit: BoxFit.fitWidth);
        },
        itemCount: imgList.length,
        pagination: SwiperPagination(),
        control: SwiperControl(),
      ),
    );
  }
}