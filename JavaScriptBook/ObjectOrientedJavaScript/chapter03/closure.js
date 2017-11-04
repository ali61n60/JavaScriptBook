//functions scope
console.log('************** functions scope');
function f1() {
    var a = 1;
    return f2();
}

function f2() {
    return a;
}

console.log(f1());

var a = 5;
console.log(f1());

delete(f2);
console.log(f1());

//Closure #1
console.log('************** Closure #1');
function f3() {
    var b = "b";
    return function () {
        return b;
    }
}

var n1 = f3();
console.log(n1());

//Closure #2
console.log('************** Closure #2');
var n2;
function f4() {
    var b2 = "b";
    n2 = function () {
        return b2;
    }
}

f4();
console.log(n2());

//A Definition and Closure #3
console.log('************** A Definition and Closure #3');
function f5(arg) {
    var n = function () {
        return arg;
    };
    arg++;
    return n;
}

var m = f5(123);
console.log(m());

//Closures in a Loop
console.log('************** Closures in a Loop');
function f6() {
    var a = [];
    var i;
    for (i = 0; i < 3; i++) {
        a[i] = function () {
            return i;
        }
    }
    return a;
}

var a1 = f6();
console.log(a1[0]());
console.log(a1[1]());
console.log(a1[2]());


function f7() {
    var a = [];
    var i;
    for (i = 0; i < 3; i++) {
        a[i] = (function (x) {
            return function () {
                return x;
            }
        })(i);
    }
    return a;
}

var a2 = f7();
console.log(a2[0]());
console.log(a2[1]());
console.log(a2[2]());

//Getter/Setter
console.log('************** Getter/Setter');
var getValue, setValue;
(function () {
    var secret = 0;
    getValue = function () {
        return secret;
    };
    setValue = function (v) {
        secret = v;
    };
})();
console.log(getValue());
setValue(123);
console.log(getValue());

//Iterator
console.log('************** Iterator');
function setup(x) {
    var i = 0;
    return function () {
        return x[i++];
    };
}
var next = setup(['a', 'b', 'c']);
console.log(next());
console.log(next());
console.log(next());