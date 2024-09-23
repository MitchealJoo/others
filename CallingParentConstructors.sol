// SPDX-License-Identifier: MIT
pragma solidity 0.8.7;

contract S {
    string name;

    constructor(string memory _name) {
        name = _name;
    }
}

contract T {
    string text;

    constructor(string memory _text) {
        text = _text;
    }
}

contract U is S('s'),T("t") {
    
}


contract BB is S('s'),T{
    constructor(string memory _text) T('t'){}
}

contract B0 is S('s'),T{
    constructor(string memory _text) T('t'){}
}

contract B2 is T,S('s'){
    constructor(string memory _text) T('t'){}
}