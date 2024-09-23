// SPDX-License-Identifier: MIT
pragma solidity 0.8.7;

contract ToDoList {
    
    struct ToDo{
        string text;
        bool completed;
    }

    ToDo [] public toDoList;

    function create(string calldata _str) external {
        ToDo memory todo = ToDo({text:_str, completed:false});
        toDoList.push(todo);
    }


    function updateText(uint _index, string calldata _text) external {
        require(_index < toDoList.length, "index out of bound");
        ToDo storage todo =  toDoList[_index];
        todo.text = _text;
    }


    function toggleCompleted(uint _index) external {
        require(_index < toDoList.length, "index out of bound");
        ToDo storage todo =  toDoList[_index];
        todo.completed = !todo.completed;
    }
}