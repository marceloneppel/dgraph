///
//  Generated code. Do not modify.
//  source: api.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

const Request$json = {
  '1': 'Request',
  '2': [
    {'1': 'start_ts', '3': 1, '4': 1, '5': 4, '10': 'startTs'},
    {'1': 'query', '3': 4, '4': 1, '5': 9, '10': 'query'},
    {
      '1': 'vars',
      '3': 5,
      '4': 3,
      '5': 11,
      '6': '.api.Request.VarsEntry',
      '10': 'vars'
    },
    {'1': 'read_only', '3': 6, '4': 1, '5': 8, '10': 'readOnly'},
    {'1': 'best_effort', '3': 7, '4': 1, '5': 8, '10': 'bestEffort'},
    {
      '1': 'mutations',
      '3': 12,
      '4': 3,
      '5': 11,
      '6': '.api.Mutation',
      '10': 'mutations'
    },
    {'1': 'commit_now', '3': 13, '4': 1, '5': 8, '10': 'commitNow'},
  ],
  '3': [Request_VarsEntry$json],
};

const Request_VarsEntry$json = {
  '1': 'VarsEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

const Uids$json = {
  '1': 'Uids',
  '2': [
    {'1': 'uids', '3': 1, '4': 3, '5': 9, '10': 'uids'},
  ],
};

const Response$json = {
  '1': 'Response',
  '2': [
    {'1': 'json', '3': 1, '4': 1, '5': 12, '10': 'json'},
    {'1': 'txn', '3': 2, '4': 1, '5': 11, '6': '.api.TxnContext', '10': 'txn'},
    {
      '1': 'latency',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.api.Latency',
      '10': 'latency'
    },
    {
      '1': 'metrics',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.api.Metrics',
      '10': 'metrics'
    },
    {
      '1': 'uids',
      '3': 12,
      '4': 3,
      '5': 11,
      '6': '.api.Response.UidsEntry',
      '10': 'uids'
    },
  ],
  '3': [Response_UidsEntry$json],
};

const Response_UidsEntry$json = {
  '1': 'UidsEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

const Mutation$json = {
  '1': 'Mutation',
  '2': [
    {'1': 'set_json', '3': 1, '4': 1, '5': 12, '10': 'setJson'},
    {'1': 'delete_json', '3': 2, '4': 1, '5': 12, '10': 'deleteJson'},
    {'1': 'set_nquads', '3': 3, '4': 1, '5': 12, '10': 'setNquads'},
    {'1': 'del_nquads', '3': 4, '4': 1, '5': 12, '10': 'delNquads'},
    {'1': 'set', '3': 5, '4': 3, '5': 11, '6': '.api.NQuad', '10': 'set'},
    {'1': 'del', '3': 6, '4': 3, '5': 11, '6': '.api.NQuad', '10': 'del'},
    {'1': 'cond', '3': 9, '4': 1, '5': 9, '10': 'cond'},
    {'1': 'commit_now', '3': 14, '4': 1, '5': 8, '10': 'commitNow'},
  ],
};

const Operation$json = {
  '1': 'Operation',
  '2': [
    {'1': 'schema', '3': 1, '4': 1, '5': 9, '10': 'schema'},
    {'1': 'drop_attr', '3': 2, '4': 1, '5': 9, '10': 'dropAttr'},
    {'1': 'drop_all', '3': 3, '4': 1, '5': 8, '10': 'dropAll'},
    {
      '1': 'drop_op',
      '3': 4,
      '4': 1,
      '5': 14,
      '6': '.api.Operation.DropOp',
      '10': 'dropOp'
    },
    {'1': 'drop_value', '3': 5, '4': 1, '5': 9, '10': 'dropValue'},
  ],
  '4': [Operation_DropOp$json],
};

const Operation_DropOp$json = {
  '1': 'DropOp',
  '2': [
    {'1': 'NONE', '2': 0},
    {'1': 'ALL', '2': 1},
    {'1': 'DATA', '2': 2},
    {'1': 'ATTR', '2': 3},
    {'1': 'TYPE', '2': 4},
  ],
};

const Payload$json = {
  '1': 'Payload',
  '2': [
    {'1': 'Data', '3': 1, '4': 1, '5': 12, '10': 'data'},
  ],
};

const TxnContext$json = {
  '1': 'TxnContext',
  '2': [
    {'1': 'start_ts', '3': 1, '4': 1, '5': 4, '10': 'startTs'},
    {'1': 'commit_ts', '3': 2, '4': 1, '5': 4, '10': 'commitTs'},
    {'1': 'aborted', '3': 3, '4': 1, '5': 8, '10': 'aborted'},
    {'1': 'keys', '3': 4, '4': 3, '5': 9, '10': 'keys'},
    {'1': 'preds', '3': 5, '4': 3, '5': 9, '10': 'preds'},
  ],
};

const Check$json = {
  '1': 'Check',
};

const Version$json = {
  '1': 'Version',
  '2': [
    {'1': 'tag', '3': 1, '4': 1, '5': 9, '10': 'tag'},
  ],
};

const Latency$json = {
  '1': 'Latency',
  '2': [
    {'1': 'parsing_ns', '3': 1, '4': 1, '5': 4, '10': 'parsingNs'},
    {'1': 'processing_ns', '3': 2, '4': 1, '5': 4, '10': 'processingNs'},
    {'1': 'encoding_ns', '3': 3, '4': 1, '5': 4, '10': 'encodingNs'},
    {
      '1': 'assign_timestamp_ns',
      '3': 4,
      '4': 1,
      '5': 4,
      '10': 'assignTimestampNs'
    },
    {'1': 'total_ns', '3': 5, '4': 1, '5': 4, '10': 'totalNs'},
  ],
};

const Metrics$json = {
  '1': 'Metrics',
  '2': [
    {
      '1': 'num_uids',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.api.Metrics.NumUidsEntry',
      '10': 'numUids'
    },
  ],
  '3': [Metrics_NumUidsEntry$json],
};

const Metrics_NumUidsEntry$json = {
  '1': 'NumUidsEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 4, '10': 'value'},
  ],
  '7': {'7': true},
};

const NQuad$json = {
  '1': 'NQuad',
  '2': [
    {'1': 'subject', '3': 1, '4': 1, '5': 9, '10': 'subject'},
    {'1': 'predicate', '3': 2, '4': 1, '5': 9, '10': 'predicate'},
    {'1': 'object_id', '3': 3, '4': 1, '5': 9, '10': 'objectId'},
    {
      '1': 'object_value',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.api.Value',
      '10': 'objectValue'
    },
    {'1': 'label', '3': 5, '4': 1, '5': 9, '10': 'label'},
    {'1': 'lang', '3': 6, '4': 1, '5': 9, '10': 'lang'},
    {'1': 'facets', '3': 7, '4': 3, '5': 11, '6': '.api.Facet', '10': 'facets'},
  ],
};

const Value$json = {
  '1': 'Value',
  '2': [
    {'1': 'default_val', '3': 1, '4': 1, '5': 9, '9': 0, '10': 'defaultVal'},
    {'1': 'bytes_val', '3': 2, '4': 1, '5': 12, '9': 0, '10': 'bytesVal'},
    {'1': 'int_val', '3': 3, '4': 1, '5': 3, '9': 0, '10': 'intVal'},
    {'1': 'bool_val', '3': 4, '4': 1, '5': 8, '9': 0, '10': 'boolVal'},
    {'1': 'str_val', '3': 5, '4': 1, '5': 9, '9': 0, '10': 'strVal'},
    {'1': 'double_val', '3': 6, '4': 1, '5': 1, '9': 0, '10': 'doubleVal'},
    {'1': 'geo_val', '3': 7, '4': 1, '5': 12, '9': 0, '10': 'geoVal'},
    {'1': 'date_val', '3': 8, '4': 1, '5': 12, '9': 0, '10': 'dateVal'},
    {'1': 'datetime_val', '3': 9, '4': 1, '5': 12, '9': 0, '10': 'datetimeVal'},
    {'1': 'password_val', '3': 10, '4': 1, '5': 9, '9': 0, '10': 'passwordVal'},
    {'1': 'uid_val', '3': 11, '4': 1, '5': 4, '9': 0, '10': 'uidVal'},
  ],
  '8': [
    {'1': 'val'},
  ],
};

const Facet$json = {
  '1': 'Facet',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 12, '10': 'value'},
    {
      '1': 'val_type',
      '3': 3,
      '4': 1,
      '5': 14,
      '6': '.api.Facet.ValType',
      '10': 'valType'
    },
    {'1': 'tokens', '3': 4, '4': 3, '5': 9, '10': 'tokens'},
    {'1': 'alias', '3': 5, '4': 1, '5': 9, '10': 'alias'},
  ],
  '4': [Facet_ValType$json],
};

const Facet_ValType$json = {
  '1': 'ValType',
  '2': [
    {'1': 'STRING', '2': 0},
    {'1': 'INT', '2': 1},
    {'1': 'FLOAT', '2': 2},
    {'1': 'BOOL', '2': 3},
    {'1': 'DATETIME', '2': 4},
  ],
};

const LoginRequest$json = {
  '1': 'LoginRequest',
  '2': [
    {'1': 'userid', '3': 1, '4': 1, '5': 9, '10': 'userid'},
    {'1': 'password', '3': 2, '4': 1, '5': 9, '10': 'password'},
    {'1': 'refresh_token', '3': 3, '4': 1, '5': 9, '10': 'refreshToken'},
  ],
};

const Jwt$json = {
  '1': 'Jwt',
  '2': [
    {'1': 'access_jwt', '3': 1, '4': 1, '5': 9, '10': 'accessJwt'},
    {'1': 'refresh_jwt', '3': 2, '4': 1, '5': 9, '10': 'refreshJwt'},
  ],
};

const DgraphServiceBase$json = {
  '1': 'Dgraph',
  '2': [
    {'1': 'Login', '2': '.api.LoginRequest', '3': '.api.Response', '4': {}},
    {'1': 'Query', '2': '.api.Request', '3': '.api.Response', '4': {}},
    {'1': 'Alter', '2': '.api.Operation', '3': '.api.Payload', '4': {}},
    {
      '1': 'CommitOrAbort',
      '2': '.api.TxnContext',
      '3': '.api.TxnContext',
      '4': {}
    },
    {'1': 'CheckVersion', '2': '.api.Check', '3': '.api.Version', '4': {}},
  ],
};

const DgraphServiceBase$messageJson = {
  '.api.LoginRequest': LoginRequest$json,
  '.api.Response': Response$json,
  '.api.TxnContext': TxnContext$json,
  '.api.Latency': Latency$json,
  '.api.Metrics': Metrics$json,
  '.api.Metrics.NumUidsEntry': Metrics_NumUidsEntry$json,
  '.api.Response.UidsEntry': Response_UidsEntry$json,
  '.api.Request': Request$json,
  '.api.Request.VarsEntry': Request_VarsEntry$json,
  '.api.Mutation': Mutation$json,
  '.api.NQuad': NQuad$json,
  '.api.Value': Value$json,
  '.api.Facet': Facet$json,
  '.api.Operation': Operation$json,
  '.api.Payload': Payload$json,
  '.api.Check': Check$json,
  '.api.Version': Version$json,
};
