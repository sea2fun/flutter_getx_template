import 'package:flutter_getx_template/app/core/model/github_search_query_param.dart';
import 'package:flutter_getx_template/app/data/model/github_project_search_response.dart';
import 'package:flutter_getx_template/app/data/remote/github_remote_data_source.dart';
import 'package:flutter_getx_template/app/data/repository/github_repository.dart';
import 'package:get/get.dart';

class GithubRepositoryImpl implements GithubRepository {
  final GithubRemoteDataSource _remoteSource =
      Get.find(tag: (GithubRemoteDataSource).toString());

  @override
  Future<GithubProjectSearchResponse> searchProject(
      GithubSearchQueryParam queryParam) async {
    return await _remoteSource.searchGithubProject(queryParam);
  }

  @override
  Future<Projects> getProject(String userName, String repositoryName) async {
    return await _remoteSource.getGithubProjectDetails(
        userName, repositoryName);
  }
}