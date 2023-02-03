pragma solidity ^0.8.17;

contract Counter{
    uint public count;

    function increment() external {
        count +=1;
    }
}
interface ICounter {
    function counter() external view returns (uint);
    function increment() external;
}
contract Moonboard {
    function icnrementCounter(address _counter) external {
        ICounter(_counter).increment();

    }
}
