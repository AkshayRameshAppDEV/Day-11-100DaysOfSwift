// Protocol
// They are rules such as properties and methods something must confirm to or must have

// Identifiable is the Protocol which has id
protocol Identifiable {
    var id: String {get set}
}
struct User: Identifiable {
    var id: String
}
let akshay = User(id: "123")
akshay.id

// Protocol Inheritence
// Protocols can inherit properties and methods from super protcol like classes
// The functions in the protocol should be merely just declarations and doesnt have bodies
// Property in protocol must have {get} or {get set}

protocol Lab {
    func doExperiment()
}

protocol Theory {
    func writeExam()
}

protocol Student: Lab, Theory {
    var id: String {get set}
    var name: String {get set}
}

class PhysicsStudent: Student {
    var id: String
    var name: String
    
    init(id: String, name: String) {
        self.id = id
        self.name = name
        print("Physics Student Created!")
    }
    
    func doExperiment() {
        print("I am doing Physics Environment")
    }
    
    func writeExam() {
        print("I am Writing Exam!")
    }
    
}

var studentA = PhysicsStudent(id: "1234", name: "Akshay")
studentA.id
studentA.name
studentA.doExperiment()
studentA.writeExam()

// Extensions
// Adding your own sets of methods to the existing swift built in types to give additional functionality and lot more features
// Also add computed properties
extension Int {
    func Int2Double() -> Double {
        return Double(self) * 1.0
    }
    
    var isOdd: Bool {
        return self % 2 != 0
    }
}

let number = 9
let numberInDouble = 9.Int2Double()
let numberIsOdd = 1.isOdd
