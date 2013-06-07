MarsRover = require '../lib/mars_rover'

describe 'The Mars rover', ->
  it 'starts on a position', ->
    rover = new MarsRover(x: 1, y: 2)
    expect(rover.position).toEqual x: 1, y: 2

  it 'starts on a default position (0, 0), when not given in constructor', ->
    rover = new MarsRover()
    expect(rover.position).toEqual x: 0, y: 0
