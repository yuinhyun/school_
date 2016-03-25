<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <jsp:include page="../global/header.jsp" />
 <div class="container" style="width:1000px; margin:0 auto;">
 	<div class="row display-table">
    <div class="col-xs-12 col-sm-4 display-cell" >
	    <ul class="nav nav-pills nav-stacked">
		<h3>배열 출력하기</h3>
		<li class="dropdown active"><button onclick="opr.sysout()">배열 출력</button></li>
		<li class="dropdown active"><button onclick="opr.score()">어벤져스 성적출력</button></li>
		<li class="dropdown active"><button onclick="opr.grade()">학점 출력</button></li>
		<li class="dropdown active"><button onclick="opr.gender()">성별 출력</button></li>
		<li class="dropdown active"><button onclick="opr.bigNum()">최대값 출력</button></li>
		<li class="dropdown active"><button onclick="opr.gugudan()">구구단 출력</button></li>
		<li class="dropdown active"><button onclick="opr.sum1to100()">합계 출력</button></li>
 		</ul>
 		    </div>
    <div class="col-xs-12 col-sm-8 display-cell" id="result" style="border: 1px solid black;height: 500px">
        text
    </div>
</div>
</div>
 <script type="text/javascript">
 var opr = {
	sysout : function() {
		/* 이름이 없는 function을 sysout에 집어넣는다. */
		var arr =['사과','배','감','귤'];
		for ( var i in arr) {
			console.log(arr[i]+'\t');	
		}
	},
	score : function() {
		var result ='';
		var avengers = [];
		avengers.push({name : '아이언',kor :90, eng :90, math :90});
		avengers.push({name : '헐크',kor :80, eng :60, math :70});
		avengers.push({name : '캡틴',kor :70, eng :70, math :50});
		/* {}->null 객체 */
		for ( var i in avengers) {
			avengers[i].getSum = function() {
				result = this.kor+this.eng+this.math;
				return result;
			}
			
			avengers[i].getAvg = function() {
				result= this.getSum()/3;
				return result;
			} 
			console.log('이름 : '+ avengers[i].name + ' 합계 : '+ avengers[i].getSum() + ' 평균 : ' +avengers[i].getAvg());
		}
		
		result = '=============어벤저스 성적표=============\n';
		result += '\이름\t국어\t영어\t수학\t총점\t평균\n';
		result += '------------------------------------\n';
		for ( var i in avengers) {
			{
				with(avengers[i]){
					result += name + ':\t'+kor + ':\t' + eng + ':\t'+math + ':\t' + getSum()+':\t'+getAvg()+'\n'
				}
			}
		}
		/* with 키워드는 배열에 담긴 하나의 객체를 의미한다.
		즉, 예를 들어
		var iron = {name : '아이언',kor :90, eng :90, math :90}
		이렇게 선언된 하나의 객체를 avengers.push(iron)이라고 줄 경우
		출력문에서 with 를 사용하지 않는다면 iron.name 이런식으로 일일히
		명시해야 하기 때문에 with를 사용한다. 
		*/
		console.log(result);
	},
	grade : function(){
		
		/*
		90점이상 A
		80 B
		70 C
		60 D
		미남 F
		*/
		var result ='';
		var kor = Number(prompt('국어점수')), eng =Number(prompt('영어점수')), math=Number(prompt('수학점수'));
		var sum = kor+eng+math;
		var avg=sum/3
		
		if (90<=avg<=100) {
			result = 'A';
		} 
		if (80<=avg<90) {
			result = 'B';
		}
		if (70<=avg<80) {
			result = 'C';
		}
		if(60<=avg<70){
			result = 'D';
		}
		else{
			result = 'F';
		}
		document.getElementById("result").innerHTML ="학점 : "+result;
	},
	gender : function() {
		/* 
		800101-1234567 일 경우 flag 값은 1 이다라고 정의함
		*/
		/* var ssn = Number(prompt('800101-1234567로 입력해주세요'));
		char flag =ssn.charAt(7);
		var result ='';
		// 라면 성별을 판별하는 로직을 switch - case 로 완성하시오
		// 자바의 switch case 와 동일
		switch (flag) {
		case '1': result = '남자';
			break;
		case '2': result = '외국인';
		break;
		
		case '4': result = '여자';
		break;
		
		default:
			result = '외계인';
			break;
		}
		document.getElementById("result").innerHTML ="성별은 : "+result; */
		
	},
	bigNum : function() {
		/* 80, 70, 60 일 경우 if 문으로 최대값 을 구하는 로직을 완성하시오 */
		var a = Number(prompt('첫번째 점수')), b =Number(prompt('두번째 점수')), c=Number(prompt('세번째 점수'));
		if(a>b||a>c){		
			max = a;
		}
		else if(b>c){
			max =b;
		}
		else{
			max =c;
		}
		document.getElementById("result").innerHTML ="최대값은 : "+ max;
	},
	gugudan : function() {
		
		var i = Number(prompt('7단을 입력하세요'));
	
		for (var j = 1; j < 10; j++) {
			var z=i*j
			document.getElementById("result").innerHTML = z;
		}
	
	},
	sum1to100 : function() {
		var su = Number(prompt('숫자를 입력하세요'));
		var sum=0,i=0;
		while (su) {
			
			for (i= 1; i < su.length; i++) {
				
				sum += i;
				
			}
			document.getElementById("result").innerHTML = sum;
			/* 1부터 100까지의 합을 출력하시오*/
		}
	}
	
	
 }
 </script>