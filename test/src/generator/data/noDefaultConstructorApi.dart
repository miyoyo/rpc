// Copyright (c) 2015, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.



library no_default_constructor_api;

import 'package:rpc/src/annotations.dart';

@ApiClass(version: '0.1')
class NoDefaultConstructorApi {
  NoDefaultConstructorApi(String foo);

  @ApiMethod(path: 'nodefault')
  VoidMessage? hello() {
    return null;
  }
}
