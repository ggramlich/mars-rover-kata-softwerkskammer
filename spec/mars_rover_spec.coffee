MarsRover = require '../lib/mars_rover'

describe 'The Mars rover', ->
  beforeEach () ->
    @addMatchers
      toHead: (direction) -> @actual.direction is direction

  describe 'start', ->
    it 'has a position', ->
      rover = new MarsRover(x: 1, y: 2)
      expect(rover.position).toEqual x: 1, y: 2

    it 'has a default position (0, 0), when not given in constructor', ->
      rover = new MarsRover(null)
      expect(rover.position).toEqual x: 0, y: 0

    it 'has a direction', ->
      rover = new MarsRover(null, 'E')
      expect(rover).toHead 'E'

    it 'has default direction "N", when not given in constructor', ->
      rover = new MarsRover(null, null)
      expect(rover).toHead 'N'


  describe 'turning', ->
    rover = null
    beforeEach ->
      rover = new MarsRover()

    it 'can turn left', ->
      rover.turnLeft()
      expect(rover).toHead 'W'

    it 'can turn left twice', ->
      rover.turnLeft()
      rover.turnLeft()
      expect(rover).toHead 'S'

    it 'can turn left three times', ->
      rover.turnLeft()
      rover.turnLeft()
      rover.turnLeft()
      expect(rover).toHead 'E'

    it 'can turn left four times', ->
      rover.turnLeft()
      rover.turnLeft()
      rover.turnLeft()
      rover.turnLeft()
      expect(rover).toHead('N')

    it 'can turn right', ->
      rover.turnRight()
      expect(rover).toHead 'E'

    it 'can turn right twice', ->
      rover.turnRight()
      rover.turnRight()
      expect(rover).toHead 'S'

    it 'can turn right three times', ->
      rover.turnRight()
      rover.turnRight()
      rover.turnRight()
      expect(rover).toHead 'W'

    it 'can turn right four times', ->
      rover.turnRight()
      rover.turnRight()
      rover.turnRight()
      rover.turnRight()
      expect(rover).toHead('N')


