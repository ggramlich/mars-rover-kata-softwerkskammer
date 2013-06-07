class MarsRover
  constructor: (@position = {x: 0, y: 0}, @direction = 'N') ->

  turnLeft: () ->
    @direction = 'W'

module.exports = MarsRover