import 'novel_chapter.dart';

class Novel {
  String image;
  String judul;
  final List<NovelChapter> chapters;

  Novel(
    this.image,
    this.judul,
    this.chapters,
  );

  static List<Novel> fetchAll() {
    return [
      Novel(
        'assets/images/ofseaandfire.png',
        'Of Sea and Fire',
        [
          NovelChapter(
            'Chapter 1',
            'novels/ofseaandfire/chapter_01.txt',
          ),
          NovelChapter(
            'Chapter 2',
            'novels/ofseaandfire/chapter_02.txt',
          ),
          NovelChapter(
            'Chapter 3',
            'novels/ofseaandfire/chapter_03.txt',
          ),
          NovelChapter(
            'Chapter 4',
            'novels/ofseaandfire/chapter_04.txt',
          ),
          NovelChapter(
            'Chapter 5',
            'novels/ofseaandfire/chapter_05.txt',
          ),
          NovelChapter(
            'Chapter 6',
            'novels/ofseaandfire/chapter_06.txt',
          ),
          NovelChapter(
            'Chapter 7',
            'novels/ofseaandfire/chapter_07.txt',
          ),
          NovelChapter(
            'Chapter 8',
            'novels/ofseaandfire/chapter_08.txt',
          ),
          NovelChapter(
            'Chapter 9',
            'novels/ofseaandfire/chapter_09.txt',
          ),
          NovelChapter(
            'Chapter 10',
            'novels/ofseaandfire/chapter_10.txt',
          ),
          NovelChapter(
            'Chapter 11',
            'novels/ofseaandfire/chapter_11.txt',
          ),
          NovelChapter(
            'Chapter 12',
            'novels/ofseaandfire/chapter_12.txt',
          ),
          NovelChapter(
            'Chapter 13',
            'novels/ofseaandfire/chapter_13.txt',
          ),
          NovelChapter(
            'Chapter 14',
            'novels/ofseaandfire/chapter_14.txt',
          ),
          NovelChapter(
            'Chapter 15',
            'novels/ofseaandfire/chapter_15.txt',
          ),
          NovelChapter(
            'Chapter 16',
            'novels/ofseaandfire/chapter_16.txt',
          ),
          NovelChapter(
            'Chapter 17',
            'novels/ofseaandfire/chapter_17.txt',
          ),
          NovelChapter(
            'Chapter 18',
            'novels/ofseaandfire/chapter_18.txt',
          ),
          NovelChapter(
            'Chapter 19',
            'novels/ofseaandfire/chapter_19.txt',
          ),
          NovelChapter(
            'Chapter 20',
            'novels/ofseaandfire/chapter_20.txt',
          ),
          NovelChapter(
            'Chapter 21',
            'novels/ofseaandfire/chapter_21.txt',
          ),
        ],
      ),
      Novel(
        'assets/images/zombie.png',
        'Zombie?',
        [
          NovelChapter(
            'Chapter 1',
            'novels/zombie/chapter_01.txt',
          ),
          NovelChapter(
            'Chapter 2',
            'novels/zombie/chapter_02.txt',
          ),
          NovelChapter(
            'Chapter 3',
            'novels/zombie/chapter_03.txt',
          ),
          NovelChapter(
            'Chapter 4',
            'novels/zombie/chapter_04.txt',
          ),
          NovelChapter(
            'Chapter 5',
            'novels/zombie/chapter_05.txt',
          ),
          NovelChapter(
            'Chapter 6',
            'novels/zombie/chapter_06.txt',
          ),
          NovelChapter(
            'Chapter 7',
            'novels/zombie/chapter_07.txt',
          ),
          NovelChapter(
            'Chapter 8',
            'novels/zombie/chapter_08.txt',
          ),
          NovelChapter(
            'Chapter 9',
            'novels/zombie/chapter_09.txt',
          ),
          NovelChapter(
            'Chapter 10',
            'novels/zombie/chapter_10.txt',
          ),
          NovelChapter(
            'Chapter 11',
            'novels/zombie/chapter_11.txt',
          ),
          NovelChapter(
            'Chapter 12',
            'novels/zombie/chapter_12.txt',
          ),
          NovelChapter(
            'Chapter 13',
            'novels/zombie/chapter_13.txt',
          ),
          NovelChapter(
            'Chapter 14',
            'novels/zombie/chapter_14.txt',
          ),
          NovelChapter(
            'Chapter 15',
            'novels/zombie/chapter_15.txt',
          ),
          NovelChapter(
            'Chapter 16',
            'novels/zombie/chapter_16.txt',
          ),
        ],
      ),
      Novel(
        'assets/images/agent.png',
        'AGENT: Agent of Mutans',
        [
          NovelChapter(
            'Prolog',
            'novels/agentofmutans/prolog.txt',
          ),
          NovelChapter(
            'Bag 1',
            'novels/agentofmutans/bag_01.txt',
          ),
          NovelChapter(
            'Bag 2',
            'novels/agentofmutans/bag_02.txt',
          ),
          NovelChapter(
            'Bag 3',
            'novels/agentofmutans/bag_03.txt',
          ),
          NovelChapter(
            'Bag 4',
            'novels/agentofmutans/bag_04.txt',
          ),
          NovelChapter(
            'Bag 5',
            'novels/agentofmutans/bag_05.txt',
          ),
          NovelChapter(
            'Bag 6',
            'novels/agentofmutans/bag_06.txt',
          ),
        ],
      ),
      Novel(
        'assets/images/thevillainess.png',
        'The Villainess',
        [
          NovelChapter(
            'Sinopsis',
            'novels/thevillainess/sinopsis.txt',
          ),
          NovelChapter(
            'Bag 1',
            'novels/thevillainess/bag_01.txt',
          ),
          NovelChapter(
            'Bag 2',
            'novels/thevillainess/bag_02.txt',
          ),
          NovelChapter(
            'Bag 3',
            'novels/thevillainess/bag_03.txt',
          ),
          NovelChapter(
            'Bag 4',
            'novels/thevillainess/bag_04.txt',
          ),
          NovelChapter(
            'Bag 5',
            'novels/thevillainess/bag_05.txt',
          ),
          NovelChapter(
            'Bag 6',
            'novels/thevillainess/bag_06.txt',
          ),
          NovelChapter(
            'Bag 7',
            'novels/thevillainess/bag_07.txt',
          ),
        ],
      ),
      Novel(
        'assets/images/transmigrasicahaya.png',
        'Transmigrasi Cahaya',
        [
          NovelChapter(
            'Cahaya Mentari Alexander',
            'novels/transmigrasicahaya/alexander.txt',
          ),
          NovelChapter(
            'Cahaya Bulan Michel',
            'novels/transmigrasicahaya/michel.txt',
          ),
          NovelChapter(
            'Bag 1',
            'novels/transmigrasicahaya/bag_01.txt',
          ),
          NovelChapter(
            'Bag 2',
            'novels/transmigrasicahaya/bag_02.txt',
          ),
          NovelChapter(
            'Bag 3',
            'novels/transmigrasicahaya/bag_03.txt',
          ),
          NovelChapter(
            'Bag 4',
            'novels/transmigrasicahaya/bag_04.txt',
          ),
          NovelChapter(
            'Bag 5',
            'novels/transmigrasicahaya/bag_05.txt',
          ),
        ],
      ),
    ];
  }
}
