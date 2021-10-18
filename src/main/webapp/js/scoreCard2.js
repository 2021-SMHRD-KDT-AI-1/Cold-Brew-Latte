//문제 객체(생성자 함수)
function Question2(text, choice, answer) {
    this.text = text;       
    this.choice = choice;   
    this.answer = answer;  
}

//퀴즈 정보 객체
function Quiz2(questions2) {
    this.score = 0;             // 점수
    this.questions2 = questions2; // 문제
    this.questionNum = 0;       // 문제 번호
}

//문제 데이터
let questions2 = [
    new Question2('바람직한 소프트웨어 설계 지침이 아닌 것은?', ['모듈의 기능을 예측할 수 있도록 정의한다.', '이식성을 고려한다.', '적당한 모듈의 크기를 유지한다.', '가능한 모듈을 독립적으로 생성하고 결합도를 최대화한다.'], '가능한 모듈을 독립적으로 생성하고 결합도를 최대화한다.'),
    new Question2('객체지향 분석 방법론 중 Coad-Yourdon 방법에 해당하는 것은?', ['E-R 다이어그램을 사용하여 객체의 행위를 데이터 모델링하는데 초점을 둔 방법이다.','객체, 동적, 기능 모델로 나누어 수행하는 방법이다.', '미시적 개발 프로세스와 거시적 개발 프로세스를 모두 사용하는 방법이다.', 'Use-Case를 강조하여 사용하는 방법이다.'], 'E-R 다이어그램을 사용하여 객체의 행위를 데이터 모델링하는데 초점을 둔 방법이다.'),
    new Question2('현행 시스템 분석에서 고려하지 않아도 되는 항목은?', ['DBMS 분석', '네트워크 분석', '운영체제 분석', '인적 자원 분석'], '인적 자원 분석')
];

const quizResults2 = document.querySelector('.results2');

//정답 확인
Quiz2.prototype.correctAnswer = function(answer){
    if(answer == this.questions2[this.questionNum].answer){
        quizResults2.style.display = "block";
        quizResults2.innerHTML = "정답입니다";
       
        console.log(this.questions2[this.questionNum].answer);
    } else if(answer != this.questions2[this.questionNum].answer){
        quizResults2.style.display = "block";
        quizResults2.innerHTML = "틀렸습니다.";
       
    }
};

//퀴즈 객체 생성
var quiz2 = new Quiz2(questions2);

var questionIndex = 0;
//문제 만들기
function updateQuiz(){
    // 상수 const
     question2 = document.querySelector('.quiz2'); 
     questionIndex = quiz2.questionNum + 1;

    $(".quiz2").html('<h2 style="font-size: 20px; text-align: center;">&lt; 문제<span class="num">'+questionIndex+'</span>&gt;</h2>'+
    '<p class="question">'+quiz2.questions2[quiz2.questionNum].text+'</p>'+
    '<div class="answers">'+
    '<label><input type="radio" name="question2" class="select" value='+quiz2.questions2[quiz2.questionNum].choice[0]+' ><span >'+quiz2.questions2[quiz2.questionNum].choice[0]+'</span></label>' +
    '<label><input type="radio" name="question2" class="select" value='+quiz2.questions2[quiz2.questionNum].choice[1]+' ><span >'+quiz2.questions2[quiz2.questionNum].choice[1]+'</span></label>' +
    '<label><input type="radio" name="question2" class="select" value='+quiz2.questions2[quiz2.questionNum].choice[2]+' ><span >'+quiz2.questions2[quiz2.questionNum].choice[2]+'</span></label>' +
    '<label><input type="radio" name="question2" class="select" value='+quiz2.questions2[quiz2.questionNum].choice[3]+' ><span >'+quiz2.questions2[quiz2.questionNum].choice[3]+'</span></label>' +
    '</div>'
    );
    
}
updateQuiz();

//정답 확인하기
var select = document.querySelectorAll('.select');
var result2 = document.querySelector('.results2');
var submit2 = document.querySelector('.submit2');
var quizanswer = "";



//다음문제 / 이전문제
var nextBtn2 = document.querySelector(".next2");
var prevBtn2 = document.querySelector(".prev2");

nextBtn2.addEventListener("click",function(e){
    if(quiz2.questions2.length - 1 == quiz2.questionNum){
        alert("마지막 문제입니다.");
    } else {
        e.preventDefault();
        quiz2.questionNum++;
        result2.style.display = "none";
        updateQuiz();
        progress2();
    }
});
prevBtn2.addEventListener("click",function(e){
    if(quiz2.questionNum == 0){
        alert("첫 문제입니다.");
    } else {
        e.preventDefault();
        quiz2.questionNum--;
        result2.style.display = "none";
        updateQuiz();
        progress2();
    }
});

//문제 진행 정보 표시(현재 문제 번호/총 문항수)
function progress2(){
    var count2 = document.querySelector('.count2');
    count2.innerHTML = `<span class="currentNum">${quiz2.questionNum+1}</span> / <span class="totalNum">${quiz2.questions2.length}</span>`;
}
progress2();

function checkAnswer(){

    $(document).on('click','.select', function(e){
        var radioVal = $('input:radio[name="question2"]:checked').val();
        quizanswer = radioVal;
        //console.log(quizanswer+"user's click");
    });

    submit2.addEventListener("click",function(){
        quiz2.correctAnswer(quizanswer);
        //console.log(quizanswer+"submit2");
    });
}
checkAnswer();
