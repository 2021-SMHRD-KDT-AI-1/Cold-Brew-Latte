//문제 객체(생성자 함수)
function Question(text, choice, answer) {
    this.text = text;       
    this.choice = choice;   
    this.answer = answer;  
}

//퀴즈 정보 객체
function Quiz(questions) {
    this.score = 0;             // 점수
    this.questions = questions; // 문제
    this.questionNum = 0;       // 문제 번호
}

//문제 데이터
let questions = [
    new Question('UNIX의 가장 핵심적인 부분이며, 프로세스, 기억장치, 파일, 입출력 관리 등 여러가지를 수행하는 것은?', ['커널(Kernel)', '쉘(Shell)', 'NUR(Not Used Recently)', '비선점(Non-preemptive) 스케줄링'], '커널(Kernel)'),
    new Question('운영체제 분석을 위해 리눅스에서 버전을 확인하고자 할 때 사용되는 명령어는?', ['ls','cat', 'pwd', 'uname'], 'uname'),
    new Question('통신을 위한 프로그램을 생성하여 포트를 할당하고, 클라이언트의 통신 요청 시 클라이언트와 연결하는 내·외부 송·수신 연계기술은?', ['	DB링크 기술', '소켓 기술', '	스크럼 기술', '프로토타입 기술'], '소켓 기술')
];

const quizResults = document.querySelector('.results');

//정답 확인
Quiz.prototype.correctAnswer = function(answer){
    if(answer == this.questions[this.questionNum].answer){
        quizResults.style.display = "block";
        quizResults.innerHTML = "정답입니다";
       
        console.log(this.questions[this.questionNum].answer);
    } else if(answer != this.questions[this.questionNum].answer){
        quizResults.style.display = "block";
        quizResults.innerHTML = "틀렸습니다.";
       
    }
};

//퀴즈 객체 생성
var quiz = new Quiz(questions);

var questionIndex = 0;
//문제 만들기
function updateQuiz(){
    // 상수 const
     question = document.querySelector('.quiz'); 
     questionIndex = quiz.questionNum + 1;

    $(".quiz").html('<h2>&lt; 문제<span class="num">'+questionIndex+'</span>&gt;</h2>'+
    '<p class="question">'+quiz.questions[quiz.questionNum].text+'</p>'+
    '<div class="answers">'+
    '<label><input type="radio" name="question" class="select" value='+quiz.questions[quiz.questionNum].choice[0]+' ><span >'+quiz.questions[quiz.questionNum].choice[0]+'</span></label>' +
    '<label><input type="radio" name="question" class="select" value='+quiz.questions[quiz.questionNum].choice[1]+' ><span >'+quiz.questions[quiz.questionNum].choice[1]+'</span></label>' +
    '<label><input type="radio" name="question" class="select" value='+quiz.questions[quiz.questionNum].choice[2]+' ><span >'+quiz.questions[quiz.questionNum].choice[2]+'</span></label>' +
    '<label><input type="radio" name="question" class="select" value='+quiz.questions[quiz.questionNum].choice[3]+' ><span >'+quiz.questions[quiz.questionNum].choice[3]+'</span></label>' +
    '</div>'
    );
    
}
updateQuiz();

var select = document.querySelectorAll('.select');
var result = document.querySelector('.results');
var submit = document.querySelector('.submit');
var quizanswer = "";

//정답 확인하기


var nextBtn = document.querySelector(".next");
var prevBtn = document.querySelector(".prev");



//다음문제 / 이전문제
nextBtn.addEventListener("click",function(e){
    if(quiz.questions.length - 1 == quiz.questionNum){
        alert("마지막 문제입니다.");
    } else {
        e.preventDefault();
        quiz.questionNum++;
        result.style.display = "none";
        updateQuiz();
        progress();
    }
});
prevBtn.addEventListener("click",function(e){
    if(quiz.questionNum == 0){
        alert("첫 문제입니다.");
    } else {
        e.preventDefault();
        quiz.questionNum--;
        result.style.display = "none";
        updateQuiz();
        progress();
    }
});

//문제 진행 정보 표시(현재 문제 번호/총 문항수)
function progress(){
    var count = document.querySelector('.count');
    count.innerHTML = `<span class="currentNum">${quiz.questionNum+1}</span> / <span class="totalNum">${quiz.questions.length}</span>`;
}
progress();

function checkAnswer(){

    $(document).on('click','.select', function(e){
        var radioVal = $('input:radio[name="question"]:checked').val();
        quizanswer = radioVal;
        //console.log(quizanswer+"user's click");
    });

    submit.addEventListener("click",function(){
        quiz.correctAnswer(quizanswer);
        //console.log(quizanswer+"submit");
    });
}
checkAnswer();
