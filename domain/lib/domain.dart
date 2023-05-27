/// Support for doing something awesome.
///
/// More dartdocs go here.
library domain;

import 'package:injectable/injectable.dart';

export 'package:domain/src/product/repository/product_repository.dart' show ProductRepository;
export 'package:domain/src/product/model/product.dart' show Product;
export 'package:domain/src/product/model/seller.dart' show Seller;

export 'package:domain/src/product/service/product_service.dart' show ProductService;
export 'package:domain/src/product/exception/empty_param_exception.dart' show EmptyParamException;
export 'package:domain/src/product/exception/negative_param_exception.dart' show NegativeParamException;
export 'package:domain/src/product/exception/no_data_product_exception.dart' show NoDataProductException;
export 'package:domain/src/product/exception/short_search_text_exception.dart' show ShortSearchTextException;
export 'package:domain/src/shared/exception/business_exception.dart' show BusinessException;

@InjectableInit.microPackage()
void initDomain() {}
