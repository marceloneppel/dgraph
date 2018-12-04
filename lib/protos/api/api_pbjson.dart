///
//  Generated code. Do not modify.
//  source: api.proto
///
// ignore_for_file: non_constant_identifier_names,library_prefixes,unused_import

const Request$json = const {
  '1': 'Request',
  '2': const [
    const {'1': 'query', '3': 1, '4': 1, '5': 9, '10': 'query'},
    const {
      '1': 'vars',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.api.Request.VarsEntry',
      '10': 'vars'
    },
    const {'1': 'start_ts', '3': 13, '4': 1, '5': 4, '10': 'startTs'},
    const {
      '1': 'lin_read',
      '3': 14,
      '4': 1,
      '5': 11,
      '6': '.api.LinRead',
      '10': 'linRead'
    },
    const {'1': 'read_only', '3': 15, '4': 1, '5': 8, '10': 'readOnly'},
  ],
  '3': const [Request_VarsEntry$json],
};

const Request_VarsEntry$json = const {
  '1': 'VarsEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': const {'7': true},
};

const Response$json = const {
  '1': 'Response',
  '2': const [
    const {'1': 'json', '3': 1, '4': 1, '5': 12, '10': 'json'},
    const {
      '1': 'schema',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.api.SchemaNode',
      '10': 'schema'
    },
    const {
      '1': 'txn',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.api.TxnContext',
      '10': 'txn'
    },
    const {
      '1': 'latency',
      '3': 12,
      '4': 1,
      '5': 11,
      '6': '.api.Latency',
      '10': 'latency'
    },
  ],
};

const Assigned$json = const {
  '1': 'Assigned',
  '2': const [
    const {
      '1': 'uids',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.api.Assigned.UidsEntry',
      '10': 'uids'
    },
    const {
      '1': 'context',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.api.TxnContext',
      '10': 'context'
    },
    const {
      '1': 'latency',
      '3': 12,
      '4': 1,
      '5': 11,
      '6': '.api.Latency',
      '10': 'latency'
    },
  ],
  '3': const [Assigned_UidsEntry$json],
};

const Assigned_UidsEntry$json = const {
  '1': 'UidsEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': const {'7': true},
};

const Mutation$json = const {
  '1': 'Mutation',
  '2': const [
    const {'1': 'set_json', '3': 1, '4': 1, '5': 12, '10': 'setJson'},
    const {'1': 'delete_json', '3': 2, '4': 1, '5': 12, '10': 'deleteJson'},
    const {'1': 'set_nquads', '3': 3, '4': 1, '5': 12, '10': 'setNquads'},
    const {'1': 'del_nquads', '3': 4, '4': 1, '5': 12, '10': 'delNquads'},
    const {
      '1': 'set',
      '3': 10,
      '4': 3,
      '5': 11,
      '6': '.api.NQuad',
      '10': 'set'
    },
    const {
      '1': 'del',
      '3': 11,
      '4': 3,
      '5': 11,
      '6': '.api.NQuad',
      '10': 'del'
    },
    const {'1': 'start_ts', '3': 13, '4': 1, '5': 4, '10': 'startTs'},
    const {'1': 'commit_now', '3': 14, '4': 1, '5': 8, '10': 'commitNow'},
    const {
      '1': 'ignore_index_conflict',
      '3': 15,
      '4': 1,
      '5': 8,
      '10': 'ignoreIndexConflict'
    },
  ],
};

const Operation$json = const {
  '1': 'Operation',
  '2': const [
    const {'1': 'schema', '3': 1, '4': 1, '5': 9, '10': 'schema'},
    const {'1': 'drop_attr', '3': 2, '4': 1, '5': 9, '10': 'dropAttr'},
    const {'1': 'drop_all', '3': 3, '4': 1, '5': 8, '10': 'dropAll'},
  ],
};

const Payload$json = const {
  '1': 'Payload',
  '2': const [
    const {'1': 'Data', '3': 1, '4': 1, '5': 12, '10': 'data'},
  ],
};

const TxnContext$json = const {
  '1': 'TxnContext',
  '2': const [
    const {'1': 'start_ts', '3': 1, '4': 1, '5': 4, '10': 'startTs'},
    const {'1': 'commit_ts', '3': 2, '4': 1, '5': 4, '10': 'commitTs'},
    const {'1': 'aborted', '3': 3, '4': 1, '5': 8, '10': 'aborted'},
    const {'1': 'keys', '3': 4, '4': 3, '5': 9, '10': 'keys'},
    const {'1': 'preds', '3': 5, '4': 3, '5': 9, '10': 'preds'},
    const {
      '1': 'lin_read',
      '3': 13,
      '4': 1,
      '5': 11,
      '6': '.api.LinRead',
      '10': 'linRead'
    },
  ],
};

const Check$json = const {
  '1': 'Check',
};

const Version$json = const {
  '1': 'Version',
  '2': const [
    const {'1': 'tag', '3': 1, '4': 1, '5': 9, '10': 'tag'},
  ],
};

const LinRead$json = const {
  '1': 'LinRead',
  '2': const [
    const {
      '1': 'ids',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.api.LinRead.IdsEntry',
      '10': 'ids'
    },
    const {
      '1': 'sequencing',
      '3': 2,
      '4': 1,
      '5': 14,
      '6': '.api.LinRead.Sequencing',
      '10': 'sequencing'
    },
  ],
  '3': const [LinRead_IdsEntry$json],
  '4': const [LinRead_Sequencing$json],
};

const LinRead_IdsEntry$json = const {
  '1': 'IdsEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 13, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 4, '10': 'value'},
  ],
  '7': const {'7': true},
};

const LinRead_Sequencing$json = const {
  '1': 'Sequencing',
  '2': const [
    const {'1': 'CLIENT_SIDE', '2': 0},
    const {'1': 'SERVER_SIDE', '2': 1},
  ],
};

const Latency$json = const {
  '1': 'Latency',
  '2': const [
    const {'1': 'parsing_ns', '3': 1, '4': 1, '5': 4, '10': 'parsingNs'},
    const {'1': 'processing_ns', '3': 2, '4': 1, '5': 4, '10': 'processingNs'},
    const {'1': 'encoding_ns', '3': 3, '4': 1, '5': 4, '10': 'encodingNs'},
  ],
};

const NQuad$json = const {
  '1': 'NQuad',
  '2': const [
    const {'1': 'subject', '3': 1, '4': 1, '5': 9, '10': 'subject'},
    const {'1': 'predicate', '3': 2, '4': 1, '5': 9, '10': 'predicate'},
    const {'1': 'object_id', '3': 3, '4': 1, '5': 9, '10': 'objectId'},
    const {
      '1': 'object_value',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.api.Value',
      '10': 'objectValue'
    },
    const {'1': 'label', '3': 5, '4': 1, '5': 9, '10': 'label'},
    const {'1': 'lang', '3': 6, '4': 1, '5': 9, '10': 'lang'},
    const {
      '1': 'facets',
      '3': 7,
      '4': 3,
      '5': 11,
      '6': '.api.Facet',
      '10': 'facets'
    },
  ],
};

const Value$json = const {
  '1': 'Value',
  '2': const [
    const {
      '1': 'default_val',
      '3': 1,
      '4': 1,
      '5': 9,
      '9': 0,
      '10': 'defaultVal'
    },
    const {'1': 'bytes_val', '3': 2, '4': 1, '5': 12, '9': 0, '10': 'bytesVal'},
    const {'1': 'int_val', '3': 3, '4': 1, '5': 3, '9': 0, '10': 'intVal'},
    const {'1': 'bool_val', '3': 4, '4': 1, '5': 8, '9': 0, '10': 'boolVal'},
    const {'1': 'str_val', '3': 5, '4': 1, '5': 9, '9': 0, '10': 'strVal'},
    const {
      '1': 'double_val',
      '3': 6,
      '4': 1,
      '5': 1,
      '9': 0,
      '10': 'doubleVal'
    },
    const {'1': 'geo_val', '3': 7, '4': 1, '5': 12, '9': 0, '10': 'geoVal'},
    const {'1': 'date_val', '3': 8, '4': 1, '5': 12, '9': 0, '10': 'dateVal'},
    const {
      '1': 'datetime_val',
      '3': 9,
      '4': 1,
      '5': 12,
      '9': 0,
      '10': 'datetimeVal'
    },
    const {
      '1': 'password_val',
      '3': 10,
      '4': 1,
      '5': 9,
      '9': 0,
      '10': 'passwordVal'
    },
    const {'1': 'uid_val', '3': 11, '4': 1, '5': 4, '9': 0, '10': 'uidVal'},
  ],
  '8': const [
    const {'1': 'val'},
  ],
};

const Facet$json = const {
  '1': 'Facet',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 12, '10': 'value'},
    const {
      '1': 'val_type',
      '3': 3,
      '4': 1,
      '5': 14,
      '6': '.api.Facet.ValType',
      '10': 'valType'
    },
    const {'1': 'tokens', '3': 4, '4': 3, '5': 9, '10': 'tokens'},
    const {'1': 'alias', '3': 5, '4': 1, '5': 9, '10': 'alias'},
  ],
  '4': const [Facet_ValType$json],
};

const Facet_ValType$json = const {
  '1': 'ValType',
  '2': const [
    const {'1': 'STRING', '2': 0},
    const {'1': 'INT', '2': 1},
    const {'1': 'FLOAT', '2': 2},
    const {'1': 'BOOL', '2': 3},
    const {'1': 'DATETIME', '2': 4},
  ],
};

const SchemaNode$json = const {
  '1': 'SchemaNode',
  '2': const [
    const {'1': 'predicate', '3': 1, '4': 1, '5': 9, '10': 'predicate'},
    const {'1': 'type', '3': 2, '4': 1, '5': 9, '10': 'type'},
    const {'1': 'index', '3': 3, '4': 1, '5': 8, '10': 'index'},
    const {'1': 'tokenizer', '3': 4, '4': 3, '5': 9, '10': 'tokenizer'},
    const {'1': 'reverse', '3': 5, '4': 1, '5': 8, '10': 'reverse'},
    const {'1': 'count', '3': 6, '4': 1, '5': 8, '10': 'count'},
    const {'1': 'list', '3': 7, '4': 1, '5': 8, '10': 'list'},
    const {'1': 'upsert', '3': 8, '4': 1, '5': 8, '10': 'upsert'},
    const {'1': 'lang', '3': 9, '4': 1, '5': 8, '10': 'lang'},
  ],
};

const Dgraph$json = const {
  '1': 'Dgraph',
  '2': const [
    const {
      '1': 'Query',
      '2': '.api.Request',
      '3': '.api.Response',
      '4': const {}
    },
    const {
      '1': 'Mutate',
      '2': '.api.Mutation',
      '3': '.api.Assigned',
      '4': const {}
    },
    const {
      '1': 'Alter',
      '2': '.api.Operation',
      '3': '.api.Payload',
      '4': const {}
    },
    const {
      '1': 'CommitOrAbort',
      '2': '.api.TxnContext',
      '3': '.api.TxnContext',
      '4': const {}
    },
    const {
      '1': 'CheckVersion',
      '2': '.api.Check',
      '3': '.api.Version',
      '4': const {}
    },
  ],
};

const Dgraph$messageJson = const {
  '.api.Request': Request$json,
  '.api.Request.VarsEntry': Request_VarsEntry$json,
  '.api.LinRead': LinRead$json,
  '.api.LinRead.IdsEntry': LinRead_IdsEntry$json,
  '.api.Response': Response$json,
  '.api.SchemaNode': SchemaNode$json,
  '.api.TxnContext': TxnContext$json,
  '.api.Latency': Latency$json,
  '.api.Mutation': Mutation$json,
  '.api.NQuad': NQuad$json,
  '.api.Value': Value$json,
  '.api.Facet': Facet$json,
  '.api.Assigned': Assigned$json,
  '.api.Assigned.UidsEntry': Assigned_UidsEntry$json,
  '.api.Operation': Operation$json,
  '.api.Payload': Payload$json,
  '.api.Check': Check$json,
  '.api.Version': Version$json,
};
