

import 'package:hive_ce/hive.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:strive_flow/data/repositories/principle_repository/principle_repository.dart';
import 'package:strive_flow/data/repositories/principle_repository/principle_repository_impl.dart';
import 'package:strive_flow/data/services/principle_service/principle_service_hive.dart';
import 'package:strive_flow/domain/models/principle/principle.dart';
import 'package:strive_flow/ui/create/subpages/create_principle_view_model.dart';

final List<SingleChildWidget> principleSubPageProviders = [
  Provider<Box<Principle>>(
    create: (_) => Hive.box<Principle>('principles'),
  ),

  /// Hive Service
  Provider<HivePrincipleService>(
    create: (context) => HivePrincipleService(context.read<Box<Principle>>(),),
  ),

  /// Repository
  Provider<PrincipleRepository>(
    create: (context) => PrincipleRepositoryImpl(context.read<HivePrincipleService>(),),
  ),

  /// ViewModel
  ChangeNotifierProvider<CreatePrincipleViewModel>(
    create: (context) => CreatePrincipleViewModel(
      repository: context.read<PrincipleRepository>(),
    ),
  ),
];
