import gleam/int
import gleam/string

pub opaque type Counter {
    Counter(value: Int, step: Int)
}

pub type Msg {
    Increment
    Decrement
    Reset
}

pub fn init(step: Int) -> Counter {
    Counter(value: 0, step: step)
}

pub fn update(counter: Counter, msg: Msg) -> Counter {
    case msg {
        Increment -> Counter(..counter, value: counter.value + counter.step)
        Decrement -> Counter(..counter, value: counter.value - counter.step)
        Reset -> init(counter.step)
    }
}

pub fn render(counter: Counter) -> String {
    string.append("The current count is: ", int.to_string(counter.value))
}