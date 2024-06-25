class SearchProductParam {
  String keyword;
  int page;
  int limit;

  SearchProductParam({
    required this.keyword,
    required this.page,
    required this.limit,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['keyword'] = keyword;
    data['page'] = page;
    data['limit'] = limit;
    return data;
  }
}
