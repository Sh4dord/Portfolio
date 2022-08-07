import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:portfolio/theme/bloc/theme_app.cubit.dart';
import 'package:portfolio/theme/bloc/theme_app.state.dart';
import 'package:portfolio/theme/dark/dark_theme.dart';
import 'package:portfolio/theme/light/light_theme.dart';

class App extends StatelessWidget {
  static Locale? _deviceLocale;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider.value(value: Modular.get<ThemeAppCubit>()),
      ],
      child: BlocBuilder<ThemeAppCubit, ThemeAppState>(
        builder: (context, state) {
          return MaterialApp.router(
            title: 'My Smart App',
            debugShowCheckedModeBanner: false,
            routeInformationParser: Modular.routeInformationParser,
            routerDelegate: Modular.routerDelegate,
            darkTheme: darkAppTheme,
            theme: lightAppTheme,
            themeMode: state.theme,
            localeResolutionCallback: (locale, supportedLocales) {
              _deviceLocale = supportedLocales.firstWhere(
                  (supportedLocale) =>
                      supportedLocale.languageCode == locale!.languageCode ||
                      supportedLocale.countryCode == locale.countryCode,
                  orElse: () => supportedLocales.first);
              return _deviceLocale;
            },
            locale: _deviceLocale,
            localizationsDelegates: const [
              ...AppLocalizations.localizationsDelegates,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            supportedLocales: const [
              Locale('en', 'GB'),
              // const Locale('fr', 'FR'),
              // const Locale('en', 'US'),
            ],
          );
        },
      ),
    ); //added by extension
  }
}
