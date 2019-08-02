/**
* plotly.js v1.29.2
* Copyright 2012-2017, Plotly, Inc.
* All rights reserved.
* Licensed under the MIT license
*/
remark.macros.scale = function (percentage) {
  var url = this;
  return '<img src="' + url + '" style="width: ' + percentage + '" />';
};