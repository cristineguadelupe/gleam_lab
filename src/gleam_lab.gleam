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

// Composição de funções
// Recebe duas funções e as encadeia para formar uma função que recebe 
// a entrada da primeira e retorna a saída da segunda
pub fn compose(fun1: fn(a) -> b, fun2: fn(b) -> c) -> fn(a) -> c {
  fn(a) { fun2(fun1(a)) }
}

pub fn add_one_and_double() {
  let add_one = fn(x: Int) {x + 1}
  let double = fn(x: Int) {x * 2}

  compose(add_one, double)
}

// Curry
// Recebe uma função com aridade 2 e retorna o seu equivalente transformado
pub fn curry2(fun: fn(a, b) -> value) {
  fn(a) { fn(b) { fun(a, b) } }
}

// Gleam suporta nativamente curry com até aridade 6, sendo facilmente expandivel se necessário
pub fn curry3(fun: fn(a, b, c) -> value) {
  fn(a) { fn(b) { fn(c) { fun(a, b, c) } } }
}

pub fn curry4(fun: fn(a, b, c, d) -> value) {
  fn(a) { fn(b) { fn(c) { fn(d) { fun(a, b, c, d) } } } }
}

pub fn curry5(fun: fn(a, b, c, d, e) -> value) {
  fn(a) { fn(b) { fn(c) { fn(d) { fn(e) { fun(a, b, c, d, e) } } } } }
}

pub fn curry6(fun: fn(a, b, c, d, e, f) -> value) {
  fn(a) {
    fn(b) { fn(c) { fn(d) { fn(e) { fn(f) { fun(a, b, c, d, e, f) } } } } }
  }
}