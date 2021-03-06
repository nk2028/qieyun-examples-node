#!/bin/sh
mkdir -p cache
cd cache
curl -LsSZ --remote-name-all https://cdn.jsdelivr.net/gh/nk2028/qieyun-examples@7d51c8a/{kyonh.js,baxter.js,unt_j.js,fanwan.js,putonghua.js,gwongzau.js}
echo "
const QieyunExamples = {
    kyonh: function kyonh(音韻地位, 字頭) { `cat kyonh.js` },
    baxter: function baxter(音韻地位, 字頭) { `cat baxter.js` },
    unt_j: function unt_j(音韻地位, 字頭) { `cat unt_j.js` },
    fanwan: function fanwan(音韻地位, 字頭) { `cat fanwan.js` },
    putonghua: function putonghua(音韻地位, 字頭) { `cat putonghua.js` },
    gwongzau: function gwongzau(音韻地位, 字頭) { `cat gwongzau.js` }
};
try { module.exports = exports = QieyunExamples; } catch (e) {}
" > ../index.js
