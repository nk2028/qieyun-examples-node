'use strict';

const chai = require('chai');
const should = chai.should();

const Qieyun = require('qieyun');
const QieyunExamples = require('../index.js');

let sr = Qieyun.query漢字('少')[0].小韻號;

QieyunExamples.baxter(sr).should.equal('syewX');
QieyunExamples.putonghua(sr).should.equal('shao3');

let p = Qieyun.get音韻地位(sr);

QieyunExamples.kyonh(p).should.equal('sjeux');
QieyunExamples.unt(p).should.equal('ɕjɛw˦˦˥');
QieyunExamples.dv9(p).should.equal('siouˊ');