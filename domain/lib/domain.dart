/// Support for doing something awesome.
///
/// More dartdocs go here.
library domain;

import 'package:injectable/injectable.dart';

export 'package:domain/src/product/repository/product_repository.dart' show ProductRepository;
export 'package:domain/src/product/model/product.dart' show Product;
export 'package:domain/src/product/model/seller.dart' show Seller;

@InjectableInit.microPackage()
void initDomain() {}
