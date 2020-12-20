# qieyun-examples-node

[![](https://badge.fury.io/js/qieyun-examples-node.svg)](https://www.npmjs.com/package/qieyun-examples-node) [![](https://github.com/nk2028/qieyun-examples-node/workflows/Test/badge.svg)](https://github.com/nk2028/qieyun-examples-node/actions?query=workflow%3A%22Test%22)

## Install

```sh
npm install qieyun-examples-node@0.0.4
```

## Usage

```javascript
> const Qieyun = require('qieyun');
> const QieyunExamples = require('qieyun-examples-node');
> let sr = Qieyun.query漢字('少')[0].小韻號;
> let p = Qieyun.get音韻地位(sr);
```

從小韻號推導：

```javascript
> QieyunExamples.baxter(sr);
'syewX'
> QieyunExamples.putonghua(sr);
'shao3'
```

從音韻地位推導：

```javascript
> QieyunExamples.kyonh(p);
'sjeux'
> QieyunExamples.unt_j(p);
'ɕe̋w'
> QieyunExamples.gwongzau(p);
'siu2'
> QieyunExamples.ayaka_v8(p);
'siouˊ'
```
