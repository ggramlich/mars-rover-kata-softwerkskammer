MarsRover = require '../lib/mars_rover'

describe 'The Mars rover', ->
  it 'starts on a position', ->
    rover = new MarsRover(x: 1, y: 2)
    expect(rover.position).toEqual x: 1, y: 2
