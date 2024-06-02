import 'package:get/get.dart';


class RemoteSourceBindings implements Bindings {
  @override
  void dependencies() {
    // Get.lazyPut<GithubRemoteDataSource>(
    //   () => GithubRemoteDataSourceImpl(),
    //   tag: (GithubRemoteDataSource).toString(),
    // );
  }
}
