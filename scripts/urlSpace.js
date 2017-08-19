var a = [" ","b"," "," "," "," "," "];

var urlSpaces = function(array){

    function swap(a,b){
        var temp = array[a];
        array[a] = array[b];
        array[b] = temp;
        return true;
    };

    function addSpace(index,a,b,c){
        array[index] = a;
        array[array.length - (sc+1)] = b;
        array[array.length - (sc+2)] = c;
        return true;
    };

    var sc = 0;
    var p = 0;

    console.log("\n Input ", array);

    for(var i = 0; i < array.length; i ++){
        debugger;
        if(i - (array.length-1-(sc-1)) > 0){
            sc-=2; 
        }

        var swapIndex = array.length - 1 - (p  % sc);

        if(sc > 0){
            swap(i, swapIndex);
            p++;
        }else if(a[i] === " "){
            addSpace(i,"%","2","0");
            sc+=2;
        }
        console.log(i, array);
    }
    return array;
}

console.log("RESULT", urlSpaces(a));
