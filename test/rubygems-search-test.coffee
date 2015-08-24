chai = require 'chai'
sinon = require 'sinon'
chai.use require 'sinon-chai'

expect = chai.expect

describe 'rubygems-search', ->
  beforeEach ->
    @robot =
      respond: sinon.spy()

    require('../src/rubygems-search')(@robot)

  it 'registers a respond listener', ->
    expect(@robot.respond).to.have.been.calledWith(/gem( me)? (.+)/i)
