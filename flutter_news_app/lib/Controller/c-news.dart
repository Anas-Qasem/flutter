import 'package:flutter_news_app/Model/m-news.dart';

class ControllerNews {
  static List<ModelNews> _dataNews = [
    ModelNews(
      title:
          'Lionel Messi: Barcelona president Joan Laporta \'moderately optimistic\' of new contract for forward',
      imageUrl:
          'https://e3.365dm.com/19/03/2048x1152/skynews-lionel-messi-barcelona_4618776.jpg',
      urlPage:
          'https://www.skysports.com/football/news/11833/12319023/lionel-messi-barcelona-president-joan-laporta-moderately-optimistic-of-new-contract-for-forward',
    ),
    ModelNews(
      title: 'Juventus want to exchange Cristiano Ronaldo for Paul Pogba',
      imageUrl:
          'https://images2.minutemediacdn.com/image/upload/c_fill,w_720,ar_16:9,f_auto,q_auto,g_auto/shape/cover/sport/Manchester-United-v-Juventus---UEFA-Champions-Leag-05c505f44f941f1e51e5428c9eb254fc.jpg',
      urlPage:
          'https://www.90min.com/posts/juventus-exchange-cristiano-ronaldo-paul-pogba-man-utd-juventus',
    ),
    ModelNews(
      title:
          'Real Madrid goal keeper Thibaut Courtois has confirmed teammate Eden Hazard has no intention of leaving the club this summer.',
      imageUrl:
          'https://site-cdn.givemesport.com/images/21/03/18/a2159b575b3a6e8c1a0ce04dfef45d16/960.jpg',
      urlPage:
          'https://www.football-espana.net/2021/06/05/thibaut-courtois-eden-hazard-will-100-stay-at-real-madrid-this-summer',
    ),
    ModelNews(
      title:
          'Mo Salah’s latest record-breaking season showed passion he won’t find elsewhere',
      imageUrl:
          'https://www.thisisanfield.com/wp-content/uploads/P2021-05-13-Man_Utd_Liverpool-110.jpg',
      urlPage:
          'https://www.thisisanfield.com/2021/06/mo-salahs-latest-record-breaking-season-showed-passion-he-wont-find-elsewhere/',
    ),
    ModelNews(
      title:
          'Sadio Mane out to match Van Persie as Liverpool seek 8 in a row vs. Palace',
      imageUrl:
          'https://www.thisisanfield.com/wp-content/uploads/P2020-12-06-Liverpool_Crystal_Palace-79.jpg',
      urlPage:
          'https://www.thisisanfield.com/2021/05/sadio-mane-out-to-match-van-persie-as-liverpool-seek-8-in-a-row-vs-palace/',
    ),
    ModelNews(
      title:
          'Benzema misses penalty in France return following six-year absence',
      imageUrl: 'https://tembah.net/uploads/news/1621344752.jpg',
      urlPage:
          'https://www.goal.com/en/news/benzema-misses-penalty-france-return/1w6f3zt1f1jwu12odzxvybo9hb',
    ),
    ModelNews(
      title:
          'Football: Neymar among 5 stoppage-time red cards as Marseille beat PSG',
      imageUrl:
          'https://static.toiimg.com/thumb/msid-77894070,imgsize-72854,width-400,resizemode-4/77894070.jpg',
      urlPage: 'https://www.euronews.com/tag/neymar',
    ),
  ];

  static List<ModelNews> get dataNews => _dataNews;
  static int get dataLength => _dataNews.length;
}
