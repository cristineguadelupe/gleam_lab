// Funções nomeadas - são criadas utilizando a keyword fn seguido do nome da função
pub fn hello_world() -> String {
  "Hello, from Gleam!"
}

pub fn add(x: Int, y: Int) -> Int {
  x + y
}

pub fn multiply(x: Int, y: Int) -> Int {
  x * y
}

// Funções anônimas - são criadas com a sintaxe fn(argumentos) {corpo da função}
pub fn run() {
  let add = fn(x, y) { x + y }

  add(1, 2)
}

// Funções podem receber como argumento outra função e podem ser encadeadas
pub fn twice(f: fn(t) -> t, x: t) -> t {
  f(f(x))
}

pub fn add_one(x: Int) -> Int {
  x + 1
}

pub fn add_two(x: Int) -> Int {
  twice(add_one, x)
}

