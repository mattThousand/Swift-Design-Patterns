
// Design Patterns in Swift #1: Observer

// Setup

protocol Observer: class {
    func didSetProperty() -> Void
}

class Observed {

    weak var observer: Observer?

    var name: String = "InitialName" {
        didSet {
            observer?.didSetProperty()
        }
    }

}

class MyObserver: Observer {

    func didSetProperty() {
       print("did set name property")
    }

}

// Usage

let observer: MyObserver = MyObserver()
let observed: Observed = Observed()

observed.observer = observer
observed.name = "Something Else"
