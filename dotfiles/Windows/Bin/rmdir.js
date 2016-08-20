var fs = require('fs'),
    rmdirPath = process.argv[2]? process.argv[2]: 'node_modules';

var rmdirSync = (function(){
    function iterator(url,dirs){
        var stat = fs.statSync(url);
        if(stat.isDirectory()){
            dirs.unshift(url);
            inner(url,dirs);
        }else if(stat.isFile()){
            fs.unlinkSync(url);
        }
    }
    function inner(path,dirs){
        var arr = fs.readdirSync(path);
        for(var i = 0, el ; el = arr[i++];){
            iterator(path+"/"+el,dirs);
        }
    }
    return function(dir,cb){
        cb = cb || function(){};
        var dirs = [];
        try{
            iterator(dir,dirs);
            for(var i = 0, el ; el = dirs[i++];){
                fs.rmdirSync(el);
            }
            cb()
        }catch(e){
            console.log('error,', rmdirPath, 'doesn\'t exist!');
            return;
            e.code === "ENOENT" ? cb() : cb(e);
        }
    }
})();

rmdirSync(rmdirPath,function(e){
    if (e) {
        console.log("error: "+e);
    }
    console.log('delete', rmdirPath, 'succeed!');
})