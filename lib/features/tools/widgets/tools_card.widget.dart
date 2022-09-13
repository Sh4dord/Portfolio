import 'package:favicon/favicon.dart' as fav;
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/infrastructure/tool/entities/tool_entity.dart';
import 'package:portfolio/theme/common/button_theme/button_theme.utils.dart';
import 'package:portfolio/theme/common/colors/material_colors.theme.dart';
import 'package:portfolio/theme/theme.dart';

class ToolsCardWidget extends StatelessWidget {
  const ToolsCardWidget({
    required this.tool,
  });

  final ToolEntity tool;

  @override
  Widget build(BuildContext context) {
    final tileColor = tool.color != null
        ? MaterialStateColors(
            hoverColor: tool.color!.withOpacity(0.7),
            stateColor: tool.color!,
          )
        : MaterialColors.random[tool.title.hashCode % MaterialColors.random.length];
    return ElevatedButton(
      onPressed: onToolCardTap,
      style: ButtonStyle(
        padding: ButtonThemeUtils.propertyBuilder(
          state: const EdgeInsets.symmetric(
            vertical: 20,
            horizontal: 28,
          ),
        ),
        backgroundColor: ButtonThemeUtils.propertyBuilder(
          state: tileColor.stateColor,
          hover: tileColor.hoverColor,
        ),
        foregroundColor: ButtonThemeUtils.propertyBuilder(
          state: tileColor.stateColor.computeLuminance() > 0.5 ? colors.black : colors.white,
        ),
        shape: ButtonThemeUtils.propertyBuilder(
          state: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          FutureBuilder<fav.Icon?>(
            future: fav.Favicon.getBest(tool.url),
            builder: (ctx, data) {
              print(data.hasError.toString() + ' ' + data.data.toString());
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
