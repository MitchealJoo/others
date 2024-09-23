// SPDX-License-Identifier: MIT
pragma solidity 0.8.7;

contract OrderEnum {
    
    enum OrderStatus {
        None, 
        Pending, 
        Shipped, 
        Completed, 
        Rejected, 
        Cancelled
    }

    struct Order{
        address buyer;
        OrderStatus status;
    }

    Order [] private orders;
    mapping(address => Order[]) ordersByBuyer; // 为每个买家存储订单;

    function set() external {
         Order memory newOrder = Order(msg.sender, OrderStatus.None);
         orders.push(newOrder);
         ordersByBuyer[msg.sender].push(newOrder);
    }

    function update(uint _id, OrderStatus _newStatus) external {
        require(_id < orders.length, "Order does not exist");
        Order storage _order = orders[_id]; 
        // 只允许订单买家更新状态
        require(orders[_id].buyer == msg.sender, "Only the buyer can update the order status");
        _order.status = _newStatus;
    }

    function get(uint _id) external view returns (OrderStatus){
        require(_id < orders.length, "Order does not exist");
        Order storage _order = orders[_id];
        return _order.status;
    }

    function reset(uint _id) external {
         // 只允许订单买家重置状态
        require(orders[_id].buyer == msg.sender, "Only the buyer can reset the order status");
        this.update(_id, OrderStatus.None);     
    }
}