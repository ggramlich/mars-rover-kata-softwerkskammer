var Rover = require('../lib/Rover.js').Rover;

describe('the Rover', function () {
  var rover;
  beforeEach(function() {
    rover = new Rover({x:0, y:0, dir:'N'})
  });
  it('should be on the start position', function () {
    expect(rover.position).toEqual({x:0, y:0, dir: 'N'});
  });
  it('has a different start position', function () {
    rover = new Rover({x:1, y:-2, dir: 'E'});
    expect(rover.position).toEqual({x:1, y:-2, dir: 'E'});
  });
  xit('position can\'t be modified from outside', function () {

  });
  xit('direction is in NWES', function() {});

  it('should move forward', function() {
    rover.moveForward();
    expect(rover.position).toEqual({x:0, y:1, dir: 'N'});
  });
  it('should move backward', function(){
    rover.moveBackward();
    expect(rover.position).toEqual({x:0, y:-1, dir: 'N'});
  });
  it('should turn left', function(){
    rover.turnLeft();
    expect(rover.position).toEqual({x:0, y:0, dir: 'W'});
  });
  it('should turn left twice', function(){
    rover.turnLeft();
    rover.turnLeft();
    expect(rover.position).toEqual({x:0, y:0, dir: 'S'});
  });
  it('should turn left thrice', function(){
    rover.turnLeft();
    rover.turnLeft();
    rover.turnLeft();
    expect(rover.position).toEqual({x:0, y:0, dir: 'E'});
  });
  it('should turn left four times', function(){
    rover.turnLeft();
    rover.turnLeft();
    rover.turnLeft();
    rover.turnLeft();
    expect(rover.position).toEqual({x:0, y:0, dir: 'N'});
  });
  it('should turn left and move forward', function(){
    rover.turnLeft();
    rover.moveForward();
    expect(rover.position).toEqual({x:-1, y:0, dir: 'W'});
  });
});
