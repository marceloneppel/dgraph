import 'package:dgraph/protos/api/api.pb.dart' as api;
import 'package:grpc/grpc.dart';
import 'package:protobuf/protobuf.dart';
import 'dart:async';

class DgraphRpcClient extends RpcClient {
  final String host;
  final int port;
  final ChannelCredentials channelCredentials;

  DgraphRpcClient(this.host, this.port, this.channelCredentials);

  @override
  Future<T> invoke<T extends GeneratedMessage>(
      ClientContext? ctx,
      String serviceName,
      String methodName,
      GeneratedMessage request,
      T emptyResponse) async {
    ClientChannel channel = ClientChannel(
      host,
      port: port,
      options: ChannelOptions(
        credentials: channelCredentials,
      ),
    );
    ClientMethod<GeneratedMessage, GeneratedMessage?> clientMethod =
        ClientMethod(
      '/api.Dgraph/$methodName',
      (GeneratedMessage value) {
        List<int> list = List.from(
          value.writeToBuffer(),
        );
        return list;
      },
      (List<int> value) {
        GeneratedMessage? generatedMessage;
        switch (methodName) {
          case "Query":
            generatedMessage = api.Response.fromBuffer(value);
            break;
          case "Mutate":
            generatedMessage = api.Response.fromBuffer(value);
            break;
          case "Alter":
            generatedMessage = api.Payload.fromBuffer(value);
            break;
          case "CommitOrAbort":
            generatedMessage = api.TxnContext.fromBuffer(value);
            break;
          case "CheckVersion":
            generatedMessage = api.Version.fromBuffer(value);
            break;
        }
        return generatedMessage;
      },
    );
    StreamController<GeneratedMessage> streamController =
        StreamController<GeneratedMessage>();
    streamController.sink.add(request);
    CallOptions callOptions = CallOptions(timeout: Duration(seconds: 3));
    ClientCall<GeneratedMessage, GeneratedMessage?> clientCall =
        channel.createCall(clientMethod, streamController.stream, callOptions);
    GeneratedMessage? response = await clientCall.response.first;
    emptyResponse = response as T;
    return emptyResponse;
  }
}
