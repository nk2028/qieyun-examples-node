# qieyun-examples-node [![](https://github.com/nk2028/qieyun-examples-node/workflows/Test/badge.svg)](https://github.com/nk2028/qieyun-examples-node/actions?query=workflow%3A%22Test%22)

## Install

```sh
npm install qieyun-examples-node@0.0.1
```

## Usage

```javascript
> const Qieyun = require('qieyun');
> const QieyunExamples = require('./index.js');
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
> QieyunExamples.unt(p);
'ɕjɛw˦˦˥'
> QieyunExamples.dv9(p);
'siouˊ'
```
