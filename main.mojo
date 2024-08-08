from python import Python

fn main() raises:
    var x = 1
    var y = 1
    var z = 1

    print("Before inout x: ", x)
    print("Before owned y: ", y)
    print("Before borrowed z: ", z)
    var x1 = inout_test(x)
    var y1 = owned_test(y)
    var z1 = borrow_test(z)

    print("After inout x: ", x)
    print("After owend y: ", y)
    print("After borrowed z: ", z)
    print("Returned x: ", x1)
    print("returned z: ", z1)
    print("returned y: ", y1)

fn plot(x: PythonObject, y: PythonObject) raises:
    var plt = Python.import_module("matplotlib.pyplot")
    plt.plot(x.numpy(), y.numpy())
    plt.xlabel("x")
    plt.ylabel("y")
    plt.title("y = sin(x)")
    plt.grid(True)
    plt.show()


fn inout_test(inout x: Int) -> Int:
    x = x + 1
    print("In inout x: ", x)
    return x

fn owned_test(owned x: Int) -> Int:
    x = x + 1
    print("In owned x: ", x)
    return x

fn borrow_test(borrowed x: Int) -> Int:
    var y = x + 1
    print("In borrowed x: ", x)
    y = x + 1
    return x