//문제 객체(생성자 함수)
function Question1(text1, choice, answer1) {
    this.text1 = text1;       
    this.choice = choice;   
    this.answer1 = answer1;  
}

//퀴즈 정보 객체
function Quiz1(questions1) {
    this.score = 0;             // 점수
    this.questions1 = questions1; // 문제
    this.questionNum1 = 0;       // 문제 번호
}

//문제 데이터
let questions1 = [
    new Question1('객체지향 개념에서 연관된 데이터와 함수를 함께 묶어 외부와 경계를 만들고 필요한 인터페이스만을 밖으로 드러내는 과정은?', ['메시지(Message)', '캡슐화(Encapsulation)', '다형성(Polymorphism)', '상속(Inheritance)'], '캡슐화(Encapsulation)'),
    new Question1('GoF(Gangs of Four) 디자인 패턴의 생성패턴에 속하지 않는 것은?', ['추상 팩토리(Abstract Factory)','빌더(Builder)', '어댑터(Adapter)', '싱글턴(Singleton)'], '어댑터(Adapter)'),
    new Question1('응용프로그램의 프로시저를 사용하여 원격 프로시저를 로컬 프로시저처럼 호출하는 방식의 미들웨어는?', ['WAS(Web Application Server)', 'MOM(Message Oriented Middleware)', 'RPC(Remote Procedure Call)', 'ORB(Object Request Broker)'], 'RPC(Remote Procedure Call)')
];

const quizResults1 = document.querySelector('.results1');

//정답 확인
Quiz1.prototype.correctAnswer = function(answer1){
    if(answer1 == this.questions1[this.questionNum1].answer1){
        quizResults1.style.display = "block";
        quizResults1.innerHTML = "정답입니다";
       
        console.log(this.questions1[this.questionNum1].answer1);
    } else if(answer1 != this.questions1[this.questionNum1].answer1){
        quizResults1.style.display = "block";
        quizResults1.innerHTML = "틀렸습니다.";
       
    }
};

//퀴즈 객체 생성
var quiz1 = new Quiz1(questions1);

var questionIndex = 0;
//문제 만들기
function updateQuiz(){
    // 상수 const
     question1 = document.querySelector('.quiz1'); 
     questionIndex = quiz1.questionNum1 + 1;

    $(".quiz1").html('<h2 style="font-size: 20px; text-align: center;">&lt; 문제1<span class="num"></span>&gt;</h2>'+
    '<p class="question">'+quiz1.questions1[quiz1.questionNum1].text1+'</p>'+
    '<div class="answers1">'+
    '<label><input type="radio" name="question1" class="select" value='+quiz1.questions1[quiz1.questionNum1].choice[0]+' ><span >'+quiz1.questions1[quiz1.questionNum1].choice[0]+'</span></label>' +
    '<label><input type="radio" name="question1" class="select" value='+quiz1.questions1[quiz1.questionNum1].choice[1]+' ><span >'+quiz1.questions1[quiz1.questionNum1].choice[1]+'</span></label>' +
    '<label><input type="radio" name="question1" class="select" value='+quiz1.questions1[quiz1.questionNum1].choice[2]+' ><span >'+quiz1.questions1[quiz1.questionNum1].choice[2]+'</span></label>' +
    '<label><input type="radio" name="question1" class="select" value='+quiz1.questions1[quiz1.questionNum1].choice[3]+' ><span >'+quiz1.questions1[quiz1.questionNum1].choice[3]+'</span></label>' +
    '</div>'
    );
    
}
updateQuiz();

//정답 확인하기
var select = document.querySelectorAll('.select');
var result1 = document.querySelector('.results1');
var submit1 = document.querySelector('.submit1');
var quizanswer = "";



//다음문제 / 이전문제
var nextBtn1 = document.querySelector(".next1");
var prevBtn1 = document.querySelector(".prev1");

nextBtn1.addEventListener("click",function(e){
    if(quiz1.questions1.length - 1 == quiz1.questionNum1){
        alert("마지막 문제입니다.");
    } else {
        e.preventDefault();
        quiz1.questionNum1++;
        result1.style.display = "none";
        updateQuiz();
        progress1();
    }
});
prevBtn1.addEventListener("click",function(e){
    if(quiz1.questionNum1 == 0){
        alert("첫 문제입니다.");
    } else {
        e.preventDefault();
        quiz1.questionNum1--;
        result1.style.display = "none";
        updateQuiz();
        progress1();
    }
});

//문제 진행 정보 표시(현재 문제 번호/총 문항수)
function progress1(){
    var count1 = document.querySelector('.count1');
    count1.innerHTML = `<span class="currentNum">${quiz1.questionNum1+1}</span> / <span class="totalNum">${quiz1.questions1.length}</span>`;
}
progress1();

function checkAnswer(){

    $(document).on('click','.select', function(e){
        var radioVal = $('input:radio[name="question1"]:checked').val();
        quizanswer = radioVal;
        //console.log(quizanswer+"user's click");
    });

    submit1.addEventListener("click",function(){
        quiz1.correctAnswer(quizanswer);
        //console.log(quizanswer+"submit1");
    });
}
checkAnswer();
