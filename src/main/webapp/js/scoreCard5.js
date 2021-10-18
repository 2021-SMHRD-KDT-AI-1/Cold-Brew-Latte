//문제 객체(생성자 함수)
function Question5(text, choice, answer) {
    this.text = text;       
    this.choice = choice;   
    this.answer = answer;  
}

//퀴즈 정보 객체
function Quiz5(questions5) {
    this.score = 0;             // 점수
    this.questions5 = questions5; // 문제
    this.questionNum = 0;       // 문제 번호
}

//문제 데이터
let questions5 = [
    new Question5('럼바우(Rumbaugh) 분석기법에서 정보모델링이라고도 하며, 시스템에서 요구되는 객체를 찾아내어 속성과 연산 식별 및 객체들 간의 관계를 규정하여 다이어그램을 표시하는 모델링은?', ['Object', 'Dynamic', 'Function', 'Static'], 'Object'),
    new Question5('소프트웨어를 개발하기 위한 비즈니스(업무)를 객체와 속성, 클래스와 멤버, 전체와 부분 등으로 나누어서 분석해 내는 기법은?', ['객체지향 분석','구조적 분석', '기능적 분석', '실시간 분석'], '객체지향 분석'),
    new Question5('애자일 소프트웨어 개발 기법의 가치가 아닌 것은?', ['프로세스의 도구보다는 개인과 상호작용에 더 가치를 둔다.', '계약 협상보다는 고객과의 협업에 더 가치를 둔다.', '실제 작동하는 소프트웨어보다는 이해하기 좋은 문서에 더 가치를 둔다.', '계획을 따르기보다는 변화에 대응하는 것에 더 가치를 둔다.'], '실제 작동하는 소프트웨어보다는 이해하기 좋은 문서에 더 가치를 둔다.')
];

const quizResults5 = document.querySelector('.results5');

//정답 확인
Quiz5.prototype.correctAnswer = function(answer){
    if(answer == this.questions5[this.questionNum].answer){
        quizResults5.style.display = "block";
        quizResults5.innerHTML = "정답입니다";
       
        console.log(this.questions5[this.questionNum].answer);
    } else if(answer != this.questions5[this.questionNum].answer){
        quizResults5.style.display = "block";
        quizResults5.innerHTML = "틀렸습니다.";
       
    }
};

//퀴즈 객체 생성
var quiz5 = new Quiz5(questions5);

var questionIndex = 0;
//문제 만들기
function updateQuiz(){
    // 상수 const
     question5 = document.querySelector('.quiz5'); 
     questionIndex = quiz5.questionNum + 1;

    $(".quiz5").html('<h2 style="font-size: 20px; text-align: center;">&lt; 문제<span class="num">'+questionIndex+'</span>&gt;</h2>'+
    '<p class="question">'+quiz5.questions5[quiz5.questionNum].text+'</p>'+
    '<div class="answers">'+
    '<label><input type="radio" name="question1" class="select" value='+quiz5.questions5[quiz5.questionNum].choice[0]+' ><span >'+quiz5.questions5[quiz5.questionNum].choice[0]+'</span></label>' +
    '<label><input type="radio" name="question1" class="select" value='+quiz5.questions5[quiz5.questionNum].choice[1]+' ><span >'+quiz5.questions5[quiz5.questionNum].choice[1]+'</span></label>' +
    '<label><input type="radio" name="question1" class="select" value='+quiz5.questions5[quiz5.questionNum].choice[2]+' ><span >'+quiz5.questions5[quiz5.questionNum].choice[2]+'</span></label>' +
    '<label><input type="radio" name="question1" class="select" value='+quiz5.questions5[quiz5.questionNum].choice[3]+' ><span >'+quiz5.questions5[quiz5.questionNum].choice[3]+'</span></label>' +
    '</div>'
    );
    
}
updateQuiz();

//정답 확인하기
var select = document.querySelectorAll('.select');
var result5 = document.querySelector('.results5');
var submit5 = document.querySelector('.submit5');
var quizanswer = "";



//다음문제 / 이전문제
var nextBtn5 = document.querySelector(".next5");
var prevBtn5 = document.querySelector(".prev5");

nextBtn5.addEventListener("click",function(e){
    if(quiz5.questions5.length - 1 == quiz5.questionNum){
        alert("마지막 문제입니다.");
    } else {
        e.preventDefault();
        quiz5.questionNum++;
        result5.style.display = "none";
        updateQuiz();
        progress5();
    }
});
prevBtn5.addEventListener("click",function(e){
    if(quiz5.questionNum == 0){
        alert("첫 문제입니다.");
    } else {
        e.preventDefault();
        quiz5.questionNum--;
        result5.style.display = "none";
        updateQuiz();
        progress5();
    }
});

//문제 진행 정보 표시(현재 문제 번호/총 문항수)
function progress5(){
    var count5 = document.querySelector('.count5');
    count5.innerHTML = `<span class="currentNum">${quiz5.questionNum+1}</span> / <span class="totalNum">${quiz5.questions5.length}</span>`;
}
progress5();

function checkAnswer(){

    $(document).on('click','.select', function(e){
        var radioVal = $('input:radio[name="question1"]:checked').val();
        quizanswer = radioVal;
        //console.log(quizanswer+"user's click");
    });

    submit5.addEventListener("click",function(){
        quiz5.correctAnswer(quizanswer);
        //console.log(quizanswer+"submit5");
    });
}
checkAnswer();
