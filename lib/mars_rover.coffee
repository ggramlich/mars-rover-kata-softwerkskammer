DIRECTION =
  N:
    left: 'W', right: 'E'
  W:
    left: 'S', right: 'N'
  S:
    left: 'E', right: 'W'
  E:
    left: 'N', right: 'S'

class MarsRover
  constructor: (@position = {x: 0, y: 0}, @direction = 'N') ->

  directionObject: () -> DIRECTION[@direction]

  turnLeft: () ->
    @direction = @directionObject().left

  turnRight: () ->
    @direction = @directionObject().right


module.exports = MarsRover