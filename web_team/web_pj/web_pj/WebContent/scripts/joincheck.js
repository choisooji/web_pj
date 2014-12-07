
	function id_check(){
		var id = document.getElementById("id");
		var regType = /^[a-zA-z]+[a-zA-Z0-9]$/;
		
		if(id.value == 0){
			alert("아이디를 입력해주세요");
			id.focus();
		}
		else if(id.value.length <5 || id.value.length>10){
			alert("아이디는 5~10자리이어야 합니다.");
			id.focus();
		}
		else{
			if(!regType.test(id.value)){
				alert("아이디는 영문으로 시작하는 영문,숫자의 혼합(영문만 가능)이여야 합니다");
				id.focus();
			} 
			else{
				return true;
			}
		}
	}
	
	function pwd_check(){
		var pwd = document.getElementById("pwd");
		var regType1 = /[a-zA-z]/;
		var regType2 = /[0-9]/;
		
		if(pwd.value.length == 0){
			alert("비밀번호를 입력해주세요.");
			pwd.focus();	
		}
		else if(pwd.value.length < 7){
			alert("비밀번호는 7자리 이상이여야 합니다.");
			pwd.focus();
		} 
		else{
			if(regType1.test(pwd.value)){
				if(regType2.test(pwd.value)){
					return true;
				}
				else{
					alert("비밀번호는 영문,숫자 혼합이여야 합니다.");
					pwd.focus();
				}
			} 
			else if(regType2.test(pwd.value)){
				if(regType1.test(pwd.value)){
					return true;
				}
				else{
					alert("비밀번호는 영문,숫자 혼합이여야 합니다.");
					pwd.focus();
				}
			}
		}
	}

	function pwd2_check(){
		var pwd = document.getElementById("pwd");
		var pwd2 = document.getElementById("pwd2");
		
		if(pwd2.value.length == 0){
			alert("비밀번호를 확인해주세요.");
			pwd2.focus();
		}
		else if(pwd.value == pwd2.value){
			return true;
		}
		else{
			alert("기 입력한 비밀번호와 다릅니다.");
			pwd2.focus();
		}
	}
	
	function name_check(){
		var name = document.getElementById("name");
		
		if(name.value.length == 0){
			alert("이름을 입력해주세요");
			name.focus();
		}
		else{
			return true;
		}
	}
	
	function regNum_check(){
		var regNum1 = document.getElementById("regNum1");
		var regNum2 = document.getElementById("regNum2");
		var buf=0;
		var key1 = [2,3,4,5,6,7];
		var key2 = [8,9,2,3,4,5];
		var sum=0;
		
			for(var i=0; i<regNum1.value.length; i++){
				buf = regNum1.value.charAt(i) * key1[i];
				sum += buf;
				buf = regNum2.value.charAt(i) * key2[i];
				sum += buf;
			}
		
			var result = 11-(sum%11)%10;
			if(result != regNum2.value.charAt(6)){
				alert("주민등록번호 형식에 맞지 않습니다.");
				regNum1.focus();
				return;
			}
			else{
				return true;
			}
	}
	
	function next(e){
		if(e.value.length >= 6){
			document.getElementById("regNum2").focus();
		}
	}
	
	function address_check(){
		var address1 = document.getElementById("address1");
		var address2 = document.getElementById("address2");
		
		if(address1.value == 0){
			alert("주소를 입력해주세요");
			address1.focus();
		}
		else if(address2.value == 0){
			alert("나머지주소를 입력해주세요");
			address2.focus();
		}
		else{
			return true;
		}	
	}
	
	function homephone_check(){
		var homephone1 = document.getElementById("homephone1");
		var homephone2 = document.getElementById("homephone2");
		var homephone3 = document.getElementById("homephone3");
		var regType = /[0-9]$/
		
		if(homephone1.value == 0 || homephone1.value == 0 || homephone1.value == 0){
			alert("유선전화번호를 입력해주세요");
		}
		else{
			if(regType.test(homephone1.value) && regType.test(homephone2.value) && regType.test(homephone3.value)){
				return true;
			}
			else{
				alert("유선전화번호 양식이 잘못되었습니다.");
				homephone1.focus();
			}
		}
	}
	
	function cellphone_check(){
		var cellphone1 = document.getElementById("cellphone1");
		var cellphone2 = document.getElementById("cellphone2");
		var regType = /[0-9]$/
		
		if(cellphone1.value == 0 || cellphone2.value == 0){
			alert("핸드폰번호를 입력해주세요");
			cellphone1.focus();
		}
		else{
			if(regType.test(cellphone1.value) && regType.test(cellphone2.value)){
				return true;
			}
			else{
				alert("핸드폰번호 양식이 잘못되었습니다.");
				cellphone1.focus();
			}
		}
	}
	
	function email_check(){
		var email = document.getElementById("email");
		var regType = /(\S+)@(\S+)\.(\S+)$/;
		
		if(email.value.length == 0){
			alert("이메일을 입력해주세요.");
			email.focus();
			return;
		}
		else{
			if(regType.test(email.value)){
				return true;
			}
			else{
				alert("이메일 형식에 맞지 않습니다.");
				email.focus();
				return;	
			}
		}
	}
	
	function all_check(){
		if(id_check() && pwd_check() && pwd2_check() && name_check() && regNum_check() 
			&& address_check() && homephone_check() && cellphone_check() && email_check()){
			alert("회원가입 완료!");
		}
	}