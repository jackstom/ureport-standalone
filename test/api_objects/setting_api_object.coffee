chai = require('chai')
endpoint = '/api/setting'

module.exports = {
  create : (server, cookies, payload, expectStatus, cb) ->
    req = chai.request(server).post(endpoint+"/")
    req.cookies = cookies;
    req.send(payload)
    .end (err, res) ->
      if err
        err.should.have.status expectStatus
        cb(err.response)
      else
        res.should.have.status expectStatus
        cb(res)

  findById : (server, cookies, path, expectStatus, cb) ->
    req = chai.request(server).get(endpoint+"/"+path)
    req.cookies = cookies;
    req.end (err, res) ->
      if err
        err.should.have.status expectStatus
        cb(err.response)
      else
        res.should.have.status expectStatus
        cb(res)

  update : (server, cookies, path, payload, expectStatus, cb) ->
    req = chai.request(server).put(endpoint+"/"+path)
    req.cookies = cookies;
    req.send(payload)
    .end (err, res) ->
      if err
        err.should.have.status expectStatus
        cb(err.response)
      else
        res.should.have.status expectStatus
        cb(res)

  delete : (server, cookies, path, expectStatus, cb) ->
    req = chai.request(server).delete(endpoint+"/"+path)
    req.cookies = cookies;
    req.end (err, res) ->
      if err
        err.should.have.status expectStatus
        cb(err.response)
      else
        res.should.have.status expectStatus
        cb(res)

  filter : (server, cookies, payload, expectStatus, cb) ->
    req = chai.request(server).post(endpoint+"/filter")
    req.cookies = cookies;
    req.send(payload)
    .end (err,res) ->
      if err
        err.should.have.status expectStatus
        cb(err.response)
      else
        res.should.have.status expectStatus
        cb(res)
}
