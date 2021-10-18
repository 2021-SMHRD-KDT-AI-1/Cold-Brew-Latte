//문제 객체(생성자 함수)
function Question4(text, choice, answer) {
    this.text = text;       
    this.choice = choice;   
    this.answer = answer;  
}

//퀴즈 정보 객체
function Quiz4(questions4) {
    this.score = 0;             // 점수
    this.questions4 = questions4; // 문제
    this.questionNum = 0;       // 문제 번호
}

//문제 데이터
let questions4 = [
    new Question4('기본 유스케이스 수행 시 특별한 조건을 만족할 때 수행하는 유스케이스는?', ['연관', '확장', '선택', '특화'], '확장'),
    new Question4('다음 중 요구사항 모델링에 활용되지 않는 것은?', ['애자일(Agile) 방법','유스케이스 다이어그램(Use Case Diagram)', '시컨스 다이어그램(Sequence Diagram)', '단계 다이어그램(Phase Diagram)'], '단계 다이어그램(Phase Diagram)'),
    new Question4('디자인 패턴을 이용한 소프트웨어 재사용으로 얻어지는 장점이 아닌 것은?', ['소프트웨어 코드의 품질을 향상시킬 수 있다.', '개발 프로세스를 무시할 수 있다.', '개발자들 사이의 의사소통을 원활하게 할 수 있다.', '소프트웨어의 품질과 생산성을 향상시킬 수 있다.'], '개발 프로세스를 무시할 수 있다.')
];

const quizResults4 = document.querySelector('.results4');

//정답 확인
Quiz4.prototype.correctAnswer = function(answer){
    if(answer == this.questions4[this.questionNum].answer){
        quizResults4.style.display = "block";
        quizResults4.innerHTML = "정답입니다";
       
        console.log(this.questions4[this.questionNum].answer);
    } else if(answer != this.questions4[this.questionNum].answer){
        quizResults4.style.display = "block";
        quizResults4.innerHTML = "틀렸습니다.";
       
    }
};

//퀴즈 객체 생성
var quiz4 = new Quiz4(questions4);

var questionIndex = 0;
//문제 만들기
function updateQuiz(){
    // 상수 const
     question4 = document.querySelector('.quiz4'); 
     questionIndex = quiz4.questionNum + 1;

    $(".quiz4").html('<h2 style="font-size: 20px; text-align: center;">&lt; 문제<span class="num">'+questionIndex+'</span>&gt;</h2>'+
    '<p class="question">'+quiz4.questions4[quiz4.questionNum].text+'</p>'+
    '<div class="answers">'+
    '<label><input type="radio" name="question1" class="select" value='+quiz4.questions4[quiz4.questionNum].choice[0]+' ><span >'+quiz4.questions4[quiz4.questionNum].choice[0]+'</span></label>' +
    '<label><input type="radio" name="question1" class="select" value='+quiz4.questions4[quiz4.questionNum].choice[1]+' ><span >'+quiz4.questions4[quiz4.questionNum].choice[1]+'</span></label>' +
    '<label><input type="radio" name="question1" class="select" value='+quiz4.questions4[quiz4.questionNum].choice[2]+' ><span >'+quiz4.questions4[quiz4.questionNum].choice[2]+'</span></label>' +
    '<label><input type="radio" name="question1" class="select" value='+quiz4.questions4[quiz4.questionNum].choice[3]+' ><span >'+quiz4.questions4[quiz4.questionNum].choice[3]+'</span></label>' +
    '</div>'
    );
    
}
updateQuiz();

//정답 확인하기
var select = document.querySelectorAll('.select');
var result4 = document.querySelector('.results4');
var submit4 = document.querySelector('.submit4');
var quizanswer = "";



//다음문제 / 이전문제
var nextBtn4 = document.querySelector(".next4");
var prevBtn4 = document.querySelector(".prev4");

nextBtn4.addEventListener("click",function(e){
    if(quiz4.questions4.length - 1 == quiz4.questionNum){
        alert("마지막 문제입니다.");
    } else {
        e.preventDefault();
        quiz4.questionNum++;
        result4.style.display = "none";
        updateQuiz();
        progress4();
    }
});
prevBtn4.addEventListener("click",function(e){
    if(quiz4.questionNum == 0){
        alert("첫 문제입니다.");
    } else {
        e.preventDefault();
        quiz4.questionNum--;
        result4.style.display = "none";
        updateQuiz();
        progress4();
    }
});

//문제 진행 정보 표시(현재 문제 번호/총 문항수)
function progress4(){
    var count4 = document.querySelector('.count4');
    count4.innerHTML = `<span class="currentNum">${quiz4.questionNum+1}</span> / <span class="totalNum">${quiz4.questions4.length}</span>`;
}
progress4();

function checkAnswer(){

    $(document).on('click','.select', function(e){
        var radioVal = $('input:radio[name="question1"]:checked').val();
        quizanswer = radioVal;
        //console.log(quizanswer+"user's click");
    });

    submit4.addEventListener("click",function(){
        quiz4.correctAnswer(quizanswer);
        //console.log(quizanswer+"submit4");
    });
}
checkAnswer();
