#!/bin/sh
mkdir -p cache
cd cache
curl -LsSZ --remote-name-all https://cdn.jsdelivr.net/gh/nk2028/qieyun-examples@20201003/{kyonh.js,baxter.js,unt.js,putonghua.js,dv9.js}
echo "
function kyonh(音韻地位) { `cat kyonh.js` }
function baxter(小韻號) { `cat baxter.js` }
function unt(音韻地位) { `cat unt.js` }
function putonghua(小韻號) { `cat putonghua.js` }
function dv9(音韻地位) { `cat dv9.js` }
const QieyunExamples = {
    kyonh: kyonh,
    baxter: baxter,
    unt: unt,
    putonghua: putonghua,
    dv9: dv9
};
try { module.exports = exports = QieyunExamples; } catch (e) {}
" > ../index.js
