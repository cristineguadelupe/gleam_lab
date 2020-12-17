import gleam_lab
import gleam/should

pub fn hello_world_test() {
  gleam_lab.hello_world()
  |> should.equal("Hello, from Gleam!")
}

pub fn add_test() {
  gleam_lab.add(2, 4)
  |> should.equal(6)
}

pub fn multiply_test() {
  gleam_lab.multiply(2, 4)
  |> should.equal(8)
}

pub fn add_two_test() {
  gleam_lab.add_two(1)
  |> should.equal(3)

  gleam_lab.add_two(2)
  |> should.equal(4)
}

pub fn add_one_and_double_test() {
  1
  |> gleam_lab.add_one_and_double()
  |> should.equal(4)
}

pub fn curry2_test() {
  let fun = fn(a, b) { a + b }
  let curried = gleam_lab.curry2(fun)

  curried(1)(2)
  |> should.equal(3)
}

pub fn curry3_test() {
  let fun = fn(a, b, c) { a + b - c}
  let curried = gleam_lab.curry3(fun)

  curried(1)(2)(3)
  |> should.equal(0)
}

pub fn curry4_test() {
  let fun = fn(a, b, c, d) { a + b + c + d}
  let curried = gleam_lab.curry4(fun)

  curried(1)(1)(1)(1)
  |> should.equal(4)
}

// Teste para o meu curry de aridade 7
pub fn curry7_test() {
  let fun = fn(a, b, c, d, e, f, g) { a + b + c + d + e + f + g}
  let curried = gleam_lab.curry7(fun)

  curried(1)(1)(1)(1)(1)(1)(1)
  |> should.equal(7)
}
