'use strict';

const chai = require('chai');
const should = chai.should();

const Qieyun = require('qieyun');
const QieyunExamples = require('../index.js');

let 音韻地位 = Qieyun.query字頭('少')[0].音韻地位;

QieyunExamples.kyonh(音韻地位).should.equal('sjeux');
QieyunExamples.baxter(音韻地位).should.equal('syewX');
QieyunExamples.unt_j(音韻地位).should.equal('ɕe̋w');
QieyunExamples.putonghua(音韻地位).should.equal('shao3');
QieyunExamples.gwongzau(音韻地位).should.equal('siu2');
