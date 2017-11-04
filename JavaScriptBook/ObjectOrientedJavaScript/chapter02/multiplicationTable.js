function multiplicationTable() {
    var result = "";
    for (var i = 1; i <= 10; i++) {
        for (var j = 1; j <= 10; j++) {
            result += (i * j).toPrecision(8,1) + "   ";
        }//end j loop
        result += "<br />";
    }//end i loop
    return result;
}// end multiplicationTable


function args() {
    eval('var k=2;');
    var result = "";
    for (var i in arguments) {
        result += arguments[i] + "  ,  ";
    }//end for
    return result;
}
