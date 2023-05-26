class NoDataProductException implements Exception {
  NoDataProductException({message = 'The entered search returned no results'});
}