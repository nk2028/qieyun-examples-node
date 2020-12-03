#!/bin/sh
mkdir -p cache
cd cache
curl -LsSZ --remote-name-all https://cdn.jsdelivr.net/gh/nk2028/qieyun-examples@8040075/{kyonh.js,baxter.js,unt.js,unt_2020.js,putonghua.js,gwongzau.js,dv9.js}
echo "
const QieyunExamples = {
    kyonh: function kyonh(音韻地位) { `cat kyonh.js` },
    baxter: function baxter(小韻號) { `cat baxter.js` },
    unt: function unt(音韻地位) { `cat unt.js` },
    unt_2020: function unt_2020(音韻地位) { `cat unt_2020.js` },
    putonghua: function putonghua(小韻號) { `cat putonghua.js` },
    gwongzau: function gwongzau(音韻地位) { `cat gwongzau.js` },
    dv9: function dv9(音韻地位) { `cat dv9.js` }
};
try { module.exports = exports = QieyunExamples; } catch (e) {}
" > ../index.js
