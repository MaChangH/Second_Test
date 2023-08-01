function goJoin() {
	location.href = "member.signup";
	
}
function memberInfoGo(){
	location.href = "member.info.go";
}


function logout(){
	var con = confirm('로그아웃 하시겠습니까?');
	if (con) {
		location.href = "member.logout";
	}
}

function bye(){
	var b = confirm ('탈퇴하시겠습니까?')
	if (b) {
		location.href = "member.bye";
	}
}

