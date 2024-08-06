import 'package:dream_life/model/story_list_item_model.dart';
import 'package:dream_life/util/result.dart';

class StoryRepository {
  StoryRepository._();
  static final StoryRepository _instance = StoryRepository._();
  factory StoryRepository.instance() => _instance;

  Future<Result<List<StoryListItemModel>>> getStoryList() async {
    return Result.success(const [
      StoryListItemModel(userId: 1, profileImage: 'https://yt3.ggpht.com/ipOrSpRMjP-U_-fc2MAp15ricD7HuaqCo0y1MvP3h-0lzcyeqesFFhK8hUz_UbTZoaZzLJTlNPQ=s68-c-k-c0x00ffffff-no-rj', name: 'sumong'),
      StoryListItemModel(userId: 2, profileImage: 'https://yt3.ggpht.com/ytc/AIdro_kH0i-jIHp62fqvp0E3bW7ef6-8VfpbRLFYMxcNFtGTFQ=s68-c-k-c0x00ffffff-no-rj', name: 'Sophia'),
      StoryListItemModel(userId: 3, profileImage: 'https://yt3.ggpht.com/ytc/AIdro_kH0i-jIHp62fqvp0E3bW7ef6-8VfpbRLFYMxcNFtGTFQ=s68-c-k-c0x00ffffff-no-rj', name: 'Alice'),
      StoryListItemModel(userId: 4, profileImage: 'https://yt3.ggpht.com/ytc/AIdro_kH0i-jIHp62fqvp0E3bW7ef6-8VfpbRLFYMxcNFtGTFQ=s68-c-k-c0x00ffffff-no-rj', name: 'Olivia'),
      StoryListItemModel(userId: 5, profileImage: 'https://yt3.ggpht.com/ytc/AIdro_kH0i-jIHp62fqvp0E3bW7ef6-8VfpbRLFYMxcNFtGTFQ=s68-c-k-c0x00ffffff-no-rj', name: 'David'),
      StoryListItemModel(userId: 6, profileImage: 'https://yt3.ggpht.com/ytc/AIdro_kH0i-jIHp62fqvp0E3bW7ef6-8VfpbRLFYMxcNFtGTFQ=s68-c-k-c0x00ffffff-no-rj', name: 'Alexander'),
      StoryListItemModel(userId: 7, profileImage: 'https://yt3.ggpht.com/ytc/AIdro_kH0i-jIHp62fqvp0E3bW7ef6-8VfpbRLFYMxcNFtGTFQ=s68-c-k-c0x00ffffff-no-rj', name: 'James'),
      StoryListItemModel(userId: 8, profileImage: 'https://yt3.ggpht.com/ipOrSpRMjP-U_-fc2MAp15ricD7HuaqCo0y1MvP3h-0lzcyeqesFFhK8hUz_UbTZoaZzLJTlNPQ=s68-c-k-c0x00ffffff-no-rj', name: 'Khloe'),
      StoryListItemModel(userId: 9, profileImage: 'https://yt3.ggpht.com/ytc/AIdro_kH0i-jIHp62fqvp0E3bW7ef6-8VfpbRLFYMxcNFtGTFQ=s68-c-k-c0x00ffffff-no-rj', name: 'Arianna'),
    ]);
  }
}