DIRECTION =
  N:
    left: 'W', right: 'E'
  W:
    left: 'S', right: 'N'
  S:
    left: 'E', right: 'W'
  E:
    left: 'N', right: 'S'

class Point
  constructor: (@position = {x: 0, y: 0}) ->

  plus: (other) -> new Point(x: @position.x + other.position.x, y: @position.y + other.position.y)

class MarsRover
  directionObject = null

  constructor: (@position = {x: 0, y: 0}, @direction = 'N') ->
    directionObject = () => DIRECTION[@direction]

  turnLeft: () ->
    @direction = directionObject().left

  turnRight: () ->
    @direction = directionObject().right

  moveForward: () ->
    @position = (new Point(@position).plus new Point(x: 0, y: 1)).position

module.exports = MarsRover