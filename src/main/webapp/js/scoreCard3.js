//문제 객체(생성자 함수)
function Question3(text, choice, answer) {
    this.text = text;       
    this.choice = choice;   
    this.answer = answer;  
}

//퀴즈 정보 객체
function Quiz3(questions3) {
    this.score = 0;             // 점수
    this.questions3 = questions3; // 문제
    this.questionNum = 0;       // 문제 번호
}

//문제 데이터
let questions3 = [
    new Question3('GoF(Gangs of Four) 디자인 패턴의 생성패턴에 속하지 않는 것은?', ['추상 팩토리(Abstract Factory)','빌더(Builder)', '어댑터(Adapter)', '싱글턴(Singleton)'], '어댑터(Adapter)'),
    new Question3('객체지향 개념에서 연관된 데이터와 함수를 함께 묶어 외부와 경계를 만들고 필요한 인터페이스만을 밖으로 드러내는 과정은?', ['메시지(Message)', '캡슐화(Encapsulation)', '다형성(Polymorphism)', '상속(Inheritance)'], '캡슐화(Encapsulation)'),
    new Question3('응용프로그램의 프로시저를 사용하여 원격 프로시저를 로컬 프로시저처럼 호출하는 방식의 미들웨어는?', ['WAS(Web Application Server)', 'MOM(Message Oriented Middleware)', 'RPC(Remote Procedure Call)', 'ORB(Object Request Broker)'], 'RPC(Remote Procedure Call)')
];

const quizResults3 = document.querySelector('.results3');

//정답 확인
Quiz3.prototype.correctAnswer = function(answer){
    if(answer == this.questions3[this.questionNum].answer){
        quizResults3.style.display = "block";
        quizResults3.innerHTML = "정답입니다";
       
        console.log(this.questions3[this.questionNum].answer);
    } else if(answer != this.questions3[this.questionNum].answer){
        quizResults3.style.display = "block";
        quizResults3.innerHTML = "틀렸습니다.";
       
    }
};

//퀴즈 객체 생성
var quiz3 = new Quiz3(questions3);

var questionIndex = 0;
//문제 만들기
function updateQuiz(){
    // 상수 const
     question3 = document.querySelector('.quiz3'); 
     questionIndex = quiz3.questionNum + 1;

    $(".quiz3").html('<h2 style="font-size: 20px; text-align: center;">&lt; 문제<span class="num">'+questionIndex+'</span>&gt;</h2>'+
    '<p class="question">'+quiz3.questions3[quiz3.questionNum].text+'</p>'+
    '<div class="answers">'+
    '<label><input type="radio" name="question3" class="select" value='+quiz3.questions3[quiz3.questionNum].choice[0]+' ><span >'+quiz3.questions3[quiz3.questionNum].choice[0]+'</span></label>' +
    '<label><input type="radio" name="question3" class="select" value='+quiz3.questions3[quiz3.questionNum].choice[1]+' ><span >'+quiz3.questions3[quiz3.questionNum].choice[1]+'</span></label>' +
    '<label><input type="radio" name="question3" class="select" value='+quiz3.questions3[quiz3.questionNum].choice[2]+' ><span >'+quiz3.questions3[quiz3.questionNum].choice[2]+'</span></label>' +
    '<label><input type="radio" name="question3" class="select" value='+quiz3.questions3[quiz3.questionNum].choice[3]+' ><span >'+quiz3.questions3[quiz3.questionNum].choice[3]+'</span></label>' +
    '</div>'
    );
    
}
updateQuiz();

//정답 확인하기
var select = document.querySelectorAll('.select');
var result3 = document.querySelector('.results3');
var submit3 = document.querySelector('.submit3');
var quizanswer = "";



//다음문제 / 이전문제
var nextBtn3 = document.querySelector(".next3");
var prevBtn3 = document.querySelector(".prev3");

nextBtn3.addEventListener("click",function(e){
    if(quiz3.questions3.length - 1 == quiz3.questionNum){
        alert("마지막 문제입니다.");
    } else {
        e.preventDefault();
        quiz3.questionNum++;
        result3.style.display = "none";
        updateQuiz();
        progress3();
    }
});
prevBtn3.addEventListener("click",function(e){
    if(quiz3.questionNum == 0){
        alert("첫 문제입니다.");
    } else {
        e.preventDefault();
        quiz3.questionNum--;
        result3.style.display = "none";
        updateQuiz();
        progress3();
    }
});

//문제 진행 정보 표시(현재 문제 번호/총 문항수)
function progress3(){
    var count3 = document.querySelector('.count3');
    count3.innerHTML = `<span class="currentNum">${quiz3.questionNum+1}</span> / <span class="totalNum">${quiz3.questions3.length}</span>`;
}
progress3();

function checkAnswer(){

    $(document).on('click','.select', function(e){
        var radioVal = $('input:radio[name="question3"]:checked').val();
        quizanswer = radioVal;
        //console.log(quizanswer+"user's click");
    });

    submit3.addEventListener("click",function(){
        quiz3.correctAnswer(quizanswer);
        //console.log(quizanswer+"submit3");
    });
}
checkAnswer();
