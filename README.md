# Swift-Design-Patterns
*Some of your favorite software design patterns implemented in Swift 2.0*

---
##*Observer*
####Setup
```
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
```

####Example
```
let observer: MyObserver = MyObserver()
let observed: Observed = Observed()

observed.observer = observer
observed.name = "Something Else"
```
