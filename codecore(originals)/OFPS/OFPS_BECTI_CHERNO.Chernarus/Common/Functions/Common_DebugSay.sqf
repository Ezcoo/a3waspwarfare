


params ["_msg"];

(format ["%1", _msg]) remoteExec ["systemChat"];