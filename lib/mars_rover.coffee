DIRECTION =
  N:
    left: 'W', right: 'E', vector: x: 0, y: 1
  E:
    left: 'N', right: 'S', vector: x: 1, y: 0
  S:
    left: 'E', right: 'W'
  W:
    left: 'S', right: 'N'

class Point
  constructor: (@position = {x: 0, y: 0}) ->

  plus: (other) -> new Point(x: @position.x + other.position.x, y: @position.y + other.position.y)

class MarsRover
  directionObject = null
  directionVector = () -> new Point directionObject().vector

  constructor: (@position = {x: 0, y: 0}, @direction = 'N') ->
    directionObject = () => DIRECTION[@direction]

  turnLeft: () ->
    @direction = directionObject().left

  turnRight: () ->
    @direction = directionObject().right

  moveForward: () ->
    @position = (new Point(@position).plus directionVector()).position

module.exports = MarsRover