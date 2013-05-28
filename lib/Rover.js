_roverDirs=['N','E','S','W'];
_roverDirsLength=_roverDirs.length;
_roverForwards=[[0,1],[1,0],[0,-1],[-1,0]];

exports.Rover = function(position) {
  this.position = position;

  this._dirToIndex=function(dir){
    for(var i=0;i<_roverDirsLength;++i){
      if(dir==_roverDirs[i]){
        return i;
      }
    }
    throw "direction is not in NESW";
  }

  this.moveForward = function() {
    var forward=_roverForwards[this._dirToIndex(this.position.dir)];
    this.position.x+=forward[0];
    this.position.y+=forward[1];
  }

  this.moveBackward = function() {
    this.position.y--;
  }

  this.turnLeft = function() {
    var newIndex=this._dirToIndex(this.position.dir);
    newIndex--;
    if(newIndex<0){
      newIndex+=_roverDirsLength;
    }
    this.position.dir=_roverDirs[newIndex];
  }
};