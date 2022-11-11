import 'package:favicon/favicon.dart' as fav;
import 'package:flutter/material.dart';
import 'package:portfolio/infrastructure/tool/entities/tool_entity.dart';
import 'package:portfolio/theme/app_theme.dart';
import 'package:portfolio/theme/common/colors/material_colors.theme.dart';
import 'package:portfolio/theme/utils/theme.utils.dart';

class ToolsCardWidget extends StatelessWidget {
  const ToolsCardWidget({
    required this.tool,
  });

  final ToolEntity tool;

  @override
  Widget build(BuildContext context) {
    final tileColor = MaterialColors.random[tool.title.hashCode % MaterialColors.random.length];
    return ElevatedButton(
      onPressed: onToolCardTap,
      style: ButtonStyle(
        padding: ThemeUtils.materialPropertyBuilder(
          state: const EdgeInsets.symmetric(
            vertical: 20,
            horizontal: 28,
          ),
        ),
        backgroundColor: ThemeUtils.materialPropertyBuilder(
          state: tileColor.stateColor,
          hover: tileColor.hoverColor,
        ),
        foregroundColor: ThemeUtils.materialPropertyBuilder(
          state: tileColor.stateColor.computeLuminance() > 0.5 ? colors.black : colors.white,
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          FutureBuilder<fav.Icon?>(
            future: fav.Favicon.getBest(tool.url),
            builder: (ctx, data) {
              if(data.hasError || data.data == null) {
                return const SizedBox.shrink();
              }
              if(!data.hasError && !data.hasData) {
                return const CircularProgressIndicator.adaptive();
              }
              return Image.network(data.data!.url);
            },
          ),
          const SizedBox(width: 5),
          Text(tool.title),
        ],
      ),
    );
  }

  void onToolCardTap() {
    debugPrint('[TOOL_CARD] : Url pressed : ${tool.url}');
  }
}
