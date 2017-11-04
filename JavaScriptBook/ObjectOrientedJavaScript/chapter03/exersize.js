var getRGB = function (rgbString) {
    var result = "";
    var rHex = '0x' + rgbString.substring(1,3)
    var rInt = parseInt(rHex, 16);

    var gHex = '0x' + rgbString.substring(3, 5);
    var gInt = parseInt(gHex, 16);

    var bHex = '0x' + rgbString.substring(5,7);
    var bInt = parseInt(bHex, 16);
    result += 'rgb(' + rInt + ',' + gInt + ',' + bInt + ')';

    return result;
}



console.log("getRGB('#ff0000') : " + getRGB('#ff0000'));
console.log("getRGB('#00ff00') : " + getRGB('#00ff00'));
console.log("getRGB('#0000ff') : " + getRGB('#0000ff'));


