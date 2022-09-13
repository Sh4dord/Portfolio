import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio/common/scaffold/custom_scaffold.dart';
import 'package:portfolio/common/section/section.dart';
import 'package:portfolio/features/tools/cubit/tools_cubit.dart';
import 'package:portfolio/features/tools/widgets/tools_card.widget.dart';
import 'package:portfolio/infrastructure/tool/entities/tool_entity.dart';
import 'package:portfolio/theme/theme.dart';

class ToolsPage extends StatelessWidget {
  static const String routeName = '/';

  ToolsPage({
    Key? key,
  }) : super(key: key);

  final _cubit = ToolsCubit()..init();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => _cubit,
      child: CustomScaffold(
        body: Column(
          children: [
            Section(
              title: 'Title',
              subtitle: 'Subtitle',
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      SizedBox(
                        height: 50,
                        width: MediaQuery.of(context).size.width / 5,
                        child: Form(
                          child: TextField(
                            onChanged:_cubit.onSearchChanged,
                            decoration: InputDecoration(
                              hintText: 'Search tool',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(24),
                                borderSide: BorderSide(
                                  color: colors.neutral.v100,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(24),
                              ),
                              prefixIcon: Icon(
                                Icons.search,
                                color: colors.neutral.v100,
                              ),
                              contentPadding: const EdgeInsets.symmetric(
                                vertical: 8,
                                horizontal: 16,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 5),
                  const Divider(),
                  const SizedBox(height: 5),
                  BlocBuilder<ToolsCubit, ToolsState>(
                    bloc: _cubit,
                    builder: (context, state) {
                      return Wrap(
                        spacing: 8,
                        runSpacing: 8,
                        children: state.filteredTools.map((e) => ToolsCardWidget(tool: e)).toList(),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
