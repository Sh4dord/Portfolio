import 'package:flutter/material.dart';
import 'package:portfolio/features/tool/widgets/tool_card.widget.dart';
import 'package:portfolio/infrastructure/tool/entities/tool_category/tool_category_entity.dart';
import 'package:portfolio/infrastructure/tool/entities/tool_entity.dart';

class ToolsSectionWidget extends StatelessWidget {
  const ToolsSectionWidget({
    required this.tools,
    required this.toolCategoryEntity,
    Key? key,
  }) : super(key: key);

  final List<ToolEntity> tools;
  final ToolCategoryEntity toolCategoryEntity;

  @override
  Widget build(BuildContext context) {
    if (tools.isEmpty) {
      return const SizedBox.shrink();
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              toolCategoryEntity.title,
              style: Theme.of(context).textTheme.headline4?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ],
        ),
        const SizedBox(height: 4),
        const Divider(
          height: 0,
          thickness: 0.5,
        ),
        const SizedBox(height: 12),
        Wrap(
          spacing: 8,
          runSpacing: 8,
          children: tools.map((e) => ToolsCardWidget(tool: e)).toList(),
        ),
        const SizedBox(height: 24),
      ],
    );
  }
}
