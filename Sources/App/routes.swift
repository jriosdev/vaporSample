import Vapor

/// Register your application's routes here.
//public func routes(_ router: Router) throws {
//    // Basic "Hello, world!" example
//    router.get("hello") { req in
//        return "Hello, world!"
//    }
//
//    // Example of configuring a controller
//    let todoController = TodoController()
//    router.get("todos", use: todoController.index)
//    router.post("todos", use: todoController.create)
//    router.delete("todos", Todo.parameter, use: todoController.delete)
//}
public func routes(_ router: Router) throws {
    router.get("name") { req in
        return "Ethan Hunt"
    }
    router.get("age") { req in
        return "\(23)"
    }
    router.get("json") { req in
        return Person(name: "Martin J. Lasek", age: 26)
    }
}
// Important: your class or struct conforms to Content
struct Person: Content {
    var name: String
    var age: Int
}
