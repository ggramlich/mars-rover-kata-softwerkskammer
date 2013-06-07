MarsRover = require '../lib/mars_rover'

describe 'The Mars rover', ->
  describe 'start', ->
    it 'has a position', ->
      rover = new MarsRover(x: 1, y: 2)
      expect(rover.position).toEqual x: 1, y: 2

    it 'has a default position (0, 0), when not given in constructor', ->
      rover = new MarsRover(null)
      expect(rover.position).toEqual x: 0, y: 0

    it 'has a direction', ->
      rover = new MarsRover(null, 'E')
      expect(rover.direction).toEqual 'E'

    it 'has default direction "N", when not given in constructor', ->
      rover = new MarsRover(null, null)
      expect(rover.direction).toEqual 'N'

  describe 'turning', ->
    rover = null
    beforeEach ->
      rover = new MarsRover()

    it 'can turn left', ->
      rover.turnLeft()
      expect(rover.direction).toEqual 'W'

    it 'can turn left twice', ->
      rover.turnLeft()
      rover.turnLeft()
      expect(rover.direction).toEqual 'S'

