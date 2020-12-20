#!/bin/sh
mkdir -p cache
cd cache
curl -LsSZ --remote-name-all https://cdn.jsdelivr.net/gh/nk2028/qieyun-examples@28e2559/{kyonh.js,baxter.js,unt_j.js,putonghua.js,gwongzau.js,ayaka_v8.js}
echo "
const QieyunExamples = {
    kyonh: function kyonh(音韻地位, 小韻號, 字頭) { `cat kyonh.js` },
    baxter: function baxter(小韻號) { `cat baxter.js` },
    unt_j: function unt_j(音韻地位, 小韻號, 字頭) { `cat unt_j.js` },
    putonghua: function putonghua(小韻號) { `cat putonghua.js` },
    gwongzau: function gwongzau(音韻地位, 小韻號, 字頭) { `cat gwongzau.js` },
    ayaka_v8: function ayaka_v8(音韻地位, 小韻號, 字頭) { `cat ayaka_v8.js` }
};
try { module.exports = exports = QieyunExamples; } catch (e) {}
" > ../index.js
