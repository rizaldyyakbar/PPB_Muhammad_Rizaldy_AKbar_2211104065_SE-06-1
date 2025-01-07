import 'package:get/get.dart';
import '../service/api_service.dart';

class PostController extends GetxController {
  final ApiService _apiService = ApiService();

  var posts = <dynamic>[].obs;
  var isLoading = false.obs;

  void fetchPosts() async {
    _handleApiOperation(
      _apiService.fetchPosts(),
      'Data berhasil diambil!',
    );
  }

  void createPost() async {
    _handleApiOperation(
      _apiService.createPost(),
      'Data berhasil ditambahkan!',
    );
  }

  void updatePost() async {
    _handleApiOperation(
      _apiService.updatePost(),
      'Data berhasil diperbarui!',
    );
  }

  void deletePost() async {
    _handleApiOperation(
      _apiService.deletePost(),
      'Data berhasil dihapus!',
    );
  }

  void _handleApiOperation(
      Future<void> operation, String successMessage) async {
    isLoading.value = true;
    try {
      await operation;
      posts.assignAll(_apiService.posts);
      Get.snackbar('Sukses', successMessage,
          snackPosition: SnackPosition.BOTTOM);
    } catch (e) {
      Get.snackbar('Error', e.toString(), snackPosition: SnackPosition.TOP);
    } finally {
      isLoading.value = false;
    }
  }
}
