var chartVars = "rMateOnLoadCallFunction=chartReadyHandler";

rMateChartH5.create("chart1", "chartHolder1", chartVars, "100%", "100%");
rMateChartH5.create("chart2", "chartHolder2", chartVars, "100%", "100%");
rMateChartH5.create("chart3", "chartHolder3", chartVars, "100%", "100%");

function chartReadyHandler(id) {
	var num = id.replace(/\D/g, "");
	document.getElementById(id).setLayout(window["layoutStr" + num]);
	document.getElementById(id).setData(chartData);
}
/**
 * minimum : 최소 값
 * maximum : 최대 값
 * showDataTip : 툴팁의 출력 여부 default true
 * targetValue : 목표치 값
 * showTargetLine : 목표치의 출력 여부 default false
 * direction : 출력 방향 default vertical
 * duration : 이펙트 출력 시간 default 800
 * showValueLabel : 수치 라벨 출력 여부 default true
 * showAnimation : 이펙트 출력 여부 default true
 * valueChangeFunction : 데이터 변경될 시 호출될 콜백 함수
 * labelJsFunction : 수치 라벨 사용자 정의 함수
 * fillJsFunction : 색상 사용자 정의 함수
 * formatter : 포맷터 default NumberFormatter
 * bounceAnimating : 이펙트 튕김 효과 설정 여부 default true
 * backgroundColor : 배경 색상 default #ffffff
 * backgroundAlpha : 배경 색상 투명도 default 1
 * backgroundStroke : 배경 테두리 선 
 * foregroundColor : 게이지 채워지는 영역 색상 default #33eeff
 * foreLineStroke : 게이지 채워지는 영역 테두리 선
 * horizontalRatio : 게이지 수평 출력 비율 default 0.6
 * verticalRatio : 게이지 수평 출력 비율 default 0.8
 * valueLabelHorizontalRatio : 수치 라벨 수평 위치 비율 default 0.5
 * valueLabelVerticalRatio : 수치 라벨 수직 위치 비율 default 0.5
 * leftTopBorderRadius : 위 왼쪽 보더 값 default 0
 * rightTopBorderRadius : 위 오른쪽 보더 값 default 0
 * leftBottomRadius : 아래 왼쪽 보더 값 default 0
 * rightBottomRadius : 아래 오른쪽 보더 값 default 0
 */
var layoutStr1 = 
	'<rMateChart>'
		+'<CurrencyFormatter id="cft" currencySymbol="%" alignSymbol="right" precision="0"/>'
		+'<LinearGauge direction="horizontal" verticalRatio="0.5" fontSize="20" valueChangeFunction="changeFunction1" labelJsFunction="labelFunc1" formatter="{cft}" foregroundColor="#20cbc2" color="#ffffff" fontWeight="bold" width="818">'
			+'<backgroundStroke>'
				+'<Stroke color="#20cbc2" weight="3"/>'
			+'</backgroundStroke>'
		+'</LinearGauge>'
	+'</rMateChart>';
var layoutStr2 = 
	'<rMateChart>'
		+'<CurrencyFormatter id="cft" currencySymbol="%" alignSymbol="right" precision="0"/>'
		+'<LinearGauge direction="horizontal" verticalRatio="0.5" fontSize="20" valueChangeFunction="changeFunction2" labelJsFunction="labelFunc2" formatter="{cft}" foregroundColor="#20cbc2" color="#ffffff" fontWeight="bold" width="818">'
			+'<backgroundStroke>'
				+'<Stroke color="#20cbc2" weight="3"/>'
			+'</backgroundStroke>'
		+'</LinearGauge>'
	+'</rMateChart>';
var layoutStr3 = 
	'<rMateChart>'
		+'<CurrencyFormatter id="cft" currencySymbol="%" alignSymbol="right" precision="0"/>'
		+'<LinearGauge direction="horizontal" verticalRatio="0.5" fontSize="20" valueChangeFunction="changeFunction3" labelJsFunction="labelFunc3" formatter="{cft}" foregroundColor="#20cbc2" color="#ffffff" fontWeight="bold" width="818">'
			+'<backgroundStroke>'
				+'<Stroke color="#20cbc2" weight="3"/>'
			+'</backgroundStroke>'
		+'</LinearGauge>'
	+'</rMateChart>';

var chartData = [80];

function changeValue(){
	document.getElementById("chart1").setData([parseInt(Math.random()*100)]);
	document.getElementById("chart2").setData([parseInt(Math.random()*100)]);
	document.getElementById("chart3").setData([parseInt(Math.random()*100)]);
}

var gaugeValue1, gaugeValue2, gaugeValue3;

function changeFunction1(value){
	gaugeValue1 = value;
}

function changeFunction2(value){
	gaugeValue2 = value;
}

function changeFunction3(value){
	gaugeValue3 = value;
}

function commitValue(){
	alert("chart1 : " + gaugeValue1 + "\nchart2 : " + gaugeValue2 + "\nchart3 : " + gaugeValue3);
}

function labelFunc1(value){
	return value+"'C";
}
function labelFunc2(value){
	return value+"%";
}
function labelFunc3(value){
	return value+"#";
}

rMateChartH5.registerTheme(rMateChartH5.themes);

function rMateChartH5ChangeTheme(theme){
	document.getElementById("chart1").setTheme(theme);
}