function set(){
//클래스 네임명으로 불러 오기가 안먹힌다 이유를 모르것내.......... 벨류 값이 언디파인드 뜨는대.... 친구 찬스 좀 써봐야 할듯 하다..
	console.log('set() function 작동');
//	let input_list = document.getElementsByClassName('input').value;
	let input_list1 = document.getElementsByClassName('input1')[1].value;
	let busi_num = document.getElementById('setBusi').value;
	let custom = document.getElementById('setCustom').value;
	
	console.log('사업자 번호 없냐 false 있냐 trud = '+!(!busi_num));
	console.log('사업자 번호 없냐 trud 있냐 false = '+(!busi_num));
	console.log('사업자 번호 공백있을때 길이 = '+busi_num.length);
	console.log('사업자 번호 공백 재거 길이 = '+busi_num.trim().length);
	console.log('사업자 번호 = '+busi_num);
	console.log('거래처 없냐 false 있냐 trud = '+!(!custom));
	console.log('거래처 = '+custom);
//	console.log('input_list = '+typeof(input_list));
//	console.log('input_list = '+input_list[0]);
//	console.log('input_list1 = '+typeof(input_list1));
//	console.log('input_list1 = '+input_list1);
	
	if(!(!busi_num))
		console.log('if 문 작동= '+busi_num);
		
	if(busi_num.trim().length > 0)
		console.log('if 문 작동= '+busi_num);
		
	
	if(!(!busi_num) && busi_num.trim().length > 0){
		console.log('if 문 작동= '+busi_num);
		let i = 0;
		for(let input in document.getElementsByClassName('input1')[i]){
			console.log('input'+i+'= '+input.value);
			if(!(!input.value) && input.value.trim().length < 0){
				input.value = null;
			}
			i++;
		}
		

	}else
		alert('사업자 번호 또는 거래처명을 입력하세요!!');
}

function set1(){
	console.log('set1() function 작동');
}


function join() {
	console.log('function join 작동');
	let joinbusi = document.getElementById('joinBusi').value;
	let joinCus = document.getElementById('joinCus').value;
	
	if(!(!joinbusi) && joinbusi.trim().length > 0){
		document.getElementById('joinTable').action ='/joinCustom';
		document.getElementById('joinTable').submit();
	}else if(!(!joinCus) && joinCus.trim().length > 0){
		document.getElementById('joinTable').action ='/joinCustom';
		document.getElementById('joinTable').submit();
	}else
		alert('값을 입력하세요!');
}


function add() {
	console.log('function add 작동');
	let input_list = document.getElementById('all').getElementsByTagName('input');
	 
	for(let input in input_list){
			if(input.value != null && input.value.trim().length < 0){
				input.value = null;
			}
	}
	document.getElementById('all').action = '/setadd';
	document.getElementById('all').submit();
	alert('변경되었습니다!');
}

function del() {
	console.log('function del 작동');
	let busi_num = document.getElementById('busi_num').value;
	if(!(!busi_num) && busi_num.trim().length > 0){
		document.del.busi_num.value = busi_num;
		document.del.action = '/del';
	    document.del.submit();
	    alert('삭제되었습니다!');
	}
}
