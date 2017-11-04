//simple function defenition
function f() {
    return 1;
}

//functions are special variable
var f2 = function () {
    return 1;
}
console.log('**************** functions are special variable');
console.log('typeof f2:' + typeof f2);


var sum = function (a, b) {
    return a + b;
}

var add = sum;
delete sum;
console.log('calling add(1,2):' + add(1, 2));


//Callback Functions
console.log('**************** Callback Functions');
function invoke_and_add(a, b) {
    return a() + b();
}

function one() {
    return 1;
}

function two() {
    return 2;
}

console.log("passing functions as parameters: " + invoke_and_add(one, two));

console.log("passing anonymous functions: " + invoke_and_add(function () { return 1; }, function () { return 2; }));

//Self-invoking Functions
console.log('**************** Self-invoking Functions');
(
function () {
    console.log('Self-invoking Functions boo');
}
)();

(
function (name) {
    console.log('Self-invoking Functions Hello ' + name + '!');
}
)('dude')

//Inner (Private) Functions
console.log('**************** Inner (Private) Functions');
function ai(param) {
    function bi(theinput) {
        return theinput * 2;
    };
    return 'The result is ' + bi(param);
}

console.log("private function call:" + ai(25));

//Functions that Return Functions
console.log('**************** Functions that Return Functions');
var ar=function() {
    console.log('Functions that Return Functions A!');
    return function () {
        console.log('Functions that Return Functions B!');
    };
}
var b = ar();
b();
ar()();
console.log('rewriting ar');
ar = ar();
ar();

//Function, Rewrite Thyself!
console.log('**************** Function, Rewrite Thyself!');

function aw() {
    console.log('A!');
    aw = function () {
        console.log('B!');
    };
}
aw();
aw();

var a = function () {
    var someSetup=function() {
        var setup = 'setup done';
        console.log(setup);
    }
    var actualWork=function() {
        console.log('Worky-worky');
    }
    someSetup();
    return actualWork;
}();
a();