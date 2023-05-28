// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:domain/domain.dart' as _i4;
import 'package:domain/domain.module.dart' as _i6;
import 'package:get_it/get_it.dart' as _i1;
import 'package:infrastructure/infrastructure.module.dart' as _i5;
import 'package:injectable/injectable.dart' as _i2;
import 'package:presentation/screens/home/bloc/product_bloc.dart' as _i3;

extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  Future<_i1.GetIt> init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i3.ProductBloc>(
        () => _i3.ProductBloc(productService: gh<_i4.ProductService>()));
    await _i5.InfrastructurePackageModule().init(gh);
    await _i6.DomainPackageModule().init(gh);
    return this;
  }
}
