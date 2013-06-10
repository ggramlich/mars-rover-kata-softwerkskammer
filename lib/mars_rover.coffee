DIRECTION =
  N:
    left: 'W'
  W:
    left: 'S'
  S:
    left: 'E'
  E:
    left: 'N'

class MarsRover
  constructor: (@position = {x: 0, y: 0}, @direction = 'N') ->

  turnLeft: () ->
    @direction = DIRECTION[@direction].left

module.exports = MarsRover