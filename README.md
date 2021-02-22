# qieyun-examples-node

[![](https://badge.fury.io/js/qieyun-examples-node.svg)](https://www.npmjs.com/package/qieyun-examples-node) [![](https://github.com/nk2028/qieyun-examples-node/workflows/Test/badge.svg)](https://github.com/nk2028/qieyun-examples-node/actions?query=workflow%3A%22Test%22)

## Install

```sh
npm install qieyun-examples-node@0.1.1
```

## Usage

```javascript
> const Qieyun = require('qieyun');
> const QieyunExamples = require('qieyun-examples-node');
> let 音韻地位 = Qieyun.query漢字('少')[0].音韻地位;
> QieyunExamples.kyonh(音韻地位);
'sjeux'
> QieyunExamples.baxter(音韻地位);
'syewX'
> QieyunExamples.unt_j(音韻地位);
'ɕe̋w'
> QieyunExamples.fanwan(音韻地位);
'shiu2';
> QieyunExamples.putonghua(音韻地位);
'shao3'
> QieyunExamples.gwongzau(音韻地位);
'siu2'
```
