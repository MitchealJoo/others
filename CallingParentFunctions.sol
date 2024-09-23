// SPDX-License-Identifier: MIT
pragma solidity 0.8.7;

contract GrandPa {
    event log(string log);

    function foo() public virtual {
        emit log('GrandPa.foo');
    }

    function bar() public virtual{
        emit log('GrandPa.bar');
    }
}

contract PranentA is GrandPa {

    function foo() public virtual override {
        emit log('PranentA.foo');
        GrandPa.foo();
    }
 
    function bar() public virtual override{
        emit log('PranentA.bar');
        super.bar();
    }
}

contract PranentB is GrandPa {

    function foo() public virtual override {
        emit log('PranentB.foo');
        GrandPa.foo();
    }

    function bar() public virtual override{
        emit log('PranentB.bar');
        super.bar();
    }
}

contract Son is PranentA, PranentB{

    function foo() public override (PranentA,PranentB){
        PranentA.foo();
    }

    function bar() public override (PranentA,PranentB){
        super.bar();
    }
}