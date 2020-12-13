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