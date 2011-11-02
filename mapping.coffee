{affine} = require './transforms'

module.exports =
  hipster: affine (face) -> [
    [128, 60, face.eye_left.x, face.eye_left.y]
    [329, 60, face.eye_right.x, face.eye_right.y]
  ]

  mustache: affine (face) -> [
    [249, 26, face.nose.x, face.nose.y]
    [249, 80, face.mouth_center.x, face.mouth_center.y]
  ]

  clown: affine (face) -> [
    [108, 111, face.nose.x, face.nose.y]
    [108, 202, face.mouth_center.x, face.mouth_center.y]
  ]

  scumbag: affine (face) -> [
    [79, 129, face.eye_left.x, face.eye_left.y]
    [137, 120, face.eye_right.x, face.eye_right.y]
  ]