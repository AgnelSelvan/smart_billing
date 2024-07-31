import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_billing/core/constants/constants.dart';
import 'package:smart_billing/core/routes/routes.dart';
import 'package:smart_billing/core/utils/app/app_bloc_stateless.dart';
import 'package:smart_billing/features/home/presentation/manager/home_bloc.dart';

class HomePage extends AppBlocStatelessWidget<HomeBloc, HomeState> {
  const HomePage({super.key});

  @override
  Widget buildView(BuildContext context, HomeBloc bloc, HomeState state) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.17,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.grey[200],
                      ),
                      padding: const EdgeInsets.all(10),
                      child: const FlutterLogo(),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ...AppConstants.allSideNavDatas.map(
                    (e) {
                      if (e.subData.isEmpty) {
                        return ListTile(
                          title: Text(e.title),
                          onTap: () {
                            context.read<HomeBloc>().add(
                                UpdateHomePageWidgetEvent(params: e.widget));
                          },
                        );
                      }
                      return SizedBox(
                        child: ExpansionTile(
                          controller: e.controller,
                          leading: Icon(
                            e.iconData,
                            size: 16,
                            color: Colors.grey[700],
                          ),
                          title: Text(
                            e.title,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          trailing: e.subData.isEmpty ? const SizedBox() : null,
                          children: e.subData
                              .map(
                                (e) => SizedBox(
                                  child: ListTile(
                                    title: Text(e.title),
                                    onTap: () {
                                      context.read<HomeBloc>().add(
                                          UpdateHomePageWidgetEvent(
                                              params: e.widget));
                                    },
                                  ),
                                ),
                              )
                              .toList(),
                        ),
                      );
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    onTap: () async {
                      // await CurrentUser.logout();
                      if (context.mounted) {
                        Navigator.of(context)
                            .pushReplacementNamed(AppRoutes.loginPage);
                      }
                    },
                    child: Center(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Colors.grey[100],
                        ),
                        padding: const EdgeInsets.symmetric(
                          vertical: 16,
                          horizontal: 14,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.logout_outlined,
                              size: 22,
                              color: Colors.red,
                            ),
                            ...[
                              const SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                child: Text(
                                  'Logout',
                                  maxLines: 1,
                                  style: Theme.of(context).textTheme.bodyLarge,
                                ),
                              ),
                            ],
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(child: state.widget),
        ],
      ),
    );
  }
}

class SideNavbar {
  final String title;
  final IconData iconData;
  final List<SideNavbar> subData;
  final String navPath;
  late ExpansionTileController controller;
  final Widget? widget;

  SideNavbar({
    required this.title,
    required this.iconData,
    required this.navPath,
    this.widget,
    this.subData = const [],
  }) {
    controller = ExpansionTileController();
  }
}
