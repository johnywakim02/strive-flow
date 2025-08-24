import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:strive_flow/core/colors/app_colors_theme_extension.dart';
import 'package:strive_flow/ui/create/subpages/create_principle_view_model.dart';
import 'package:strive_flow/ui/create/widgets/create_principle_section.dart';
import 'package:strive_flow/ui/create/widgets/my_principles_section.dart';

class CreatePrincipleSubpage extends StatefulWidget {
  const CreatePrincipleSubpage({super.key});

  @override
  State<CreatePrincipleSubpage> createState() => _CreatePrincipleSubpageState();
}

class _CreatePrincipleSubpageState extends State<CreatePrincipleSubpage> {
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();

  @override
  void initState() {
    super.initState();
    // Defer the call to ensure context is available
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<CreatePrincipleViewModel>().loadPrinciples();
    });
  }

  Future<void> _onAdd() async {
    final vm = context.read<CreatePrincipleViewModel>();
    await vm.addPrinciple(_titleController.text, _descriptionController.text);
    _titleController.clear();
    _descriptionController.clear();
  }

  @override
  Widget build(BuildContext context) {
    final CreatePrincipleViewModel vm = context.watch<CreatePrincipleViewModel>();
    final AppColorsThemeExtension colorScheme = Theme.of(context).extension<AppColorsThemeExtension>()!;

    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: colorScheme.backgroundColor,
      appBar: AppBar(
        backgroundColor: colorScheme.appBarBackgroundColor,
        title: const Text("Principles"),
        centerTitle: true,
      ),
      body: Builder(
        builder: (context) {
          if (vm.isLoading) {
            return const Center(child: CircularProgressIndicator());
          }

          if (vm.error != null) {
            return Center(child: Text(vm.error!));
          }

          return MyPrinciplesSection(
            principles: vm.principles,
            onDelete: vm.deletePrinciple,
          );
        },
      ),

      floatingActionButton: CreatePrincipleSection(
        titleController: _titleController,
        descriptionController: _descriptionController,
        onAdd: _onAdd,
      ),
    );
  }
}
