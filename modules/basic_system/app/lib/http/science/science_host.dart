import 'package:fx_dio/fx_dio.dart';

class ScienceHost extends Host {
  const ScienceHost();

  @override
  Map<HostEnv, String> get value => {
        HostEnv.release: 'toly1994.com',
        HostEnv.dev: '192.168.109.244',
      };

  @override
  HostConfig get config => const HostConfig(
        scheme: 'http',
        port: 3000,
        apiNest: '/api/v1',
      );

  @override
  HostEnv get env => HostEnv.release;
}

enum ScienceApi {
  appVersion("/app_version"),
  ;

  final String path;
  final Method? method;

  const ScienceApi(this.path, [this.method = Method.get]);
}
