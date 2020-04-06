import 'package:cv_car_mobile_app_layout_flutter/services/api_keys.dart';
import 'package:flutter/foundation.dart';

enum Endpoint {
  allVehicles,
  newVehicle,
  vehicleINFO,
  vehicleAN,
  vehicleDTC,
  vehicleHR,
  vehicleTRIP
}

class API {
  API({@required this.apiKey});
  final String apiKey;
  String _vin = '';

  factory API.sandbox() => API(apiKey: APIKeys.cvSandboxKey);

  static final String host =
      'https://ji8tw9n7hd.execute-api.cn-north-1.amazonaws.com.cn';
  static final int port = 443;
  static final String basePath = 'prod';

  Uri tokenUri() => Uri(
        scheme: 'https',
        host: host,
        port: port,
        path: 'token',
        queryParameters: {'grant_type': 'client_credentials'},
      );

  Uri endpointUri(Endpoint endpoint) => Uri(
        scheme: 'https',
        host: host,
        port: port,
        path: '$basePath/${_paths[endpoint]}',
      );

  Map<Endpoint, String> _paths = {
    Endpoint.allVehicles: 'vehicles',
    Endpoint.newVehicle: 'vehicles',
    Endpoint.vehicleINFO: 'vehicles/${'vin'}',
    Endpoint.vehicleAN: 'vehicles/${'vin'}/anomalies',
    Endpoint.vehicleDTC: 'vehicles/${'vin'}/dtc',
    Endpoint.vehicleHR: 'vehicles/${'vin'}/healthreports',
    Endpoint.vehicleTRIP: 'vehicles/${'vin'}/trips',
  };
}
