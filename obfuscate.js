var key = "I like jam";

// Takes strings, returns string
var crypt_xor = function (text) {
    var out = "";
    var i = 0;
    var j;

    for (j = 0; j < text.length; j++) {
	out += String.fromCharCode(text.charCodeAt(j)  ^ key.charCodeAt(i));
	i = ++i % key.length;
    }
    return out;
}

var obfuscate = function(text) {
    var string = crypt_xor(text);
    var out = [];

    for (var i in string) {
        out.push(string.charCodeAt(i));
    }
    return out;
};

var deobfuscate = function(code_array) {
    var text = "";

    for (var i in code_array) {
        text += String.fromCharCode(code_array[i]);
    }
    return crypt_xor(text);
};
