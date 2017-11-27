pragma solidity 0.4.15;

contract IKernel {
    function createPermission(address _entity, address _app, bytes32 _role, address _owner) external;
    function grantPermission(address _entity, address _app,  bytes32 _role) external;
    function revokePermission(address _entity, address _app, bytes32 _role) external;
    function setPermissionOwner(address _newOwner, address _app, bytes32 _role) external;

    function setAppCode(bytes32 _appId, address _code) external;
    function upgradeKernel(address _newKernel) external;

    function getPermission(address _entity, address _app, bytes32 _role) constant public returns (bool);
    function getPermissionOwner(address _app, bytes32 _role) constant public returns (address);

    function canPerform(address _entity, address _app, bytes32 _role) constant public returns (bool);
    function getAppCode(bytes32 _appId) constant public returns (address);
}