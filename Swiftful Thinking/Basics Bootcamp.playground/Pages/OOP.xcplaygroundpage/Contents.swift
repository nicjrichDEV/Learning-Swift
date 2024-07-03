
import Foundation

/*
 Object Oriented Programming:
 
 During the life of the app, we create and destroy the object
 
 Create -> Initialize an object by using "init()" keyword
 - When an object is created its allocated into the memory of the machine
 
 Destroy -> De-initialize an object by using "deinit" keyword
 - When an object is deinit its deallocating memory on the machine
 
 Automatic Reference Counting (ARC)
 - A live count of the number of objects in memory
 - Create 1 object, count goes up by 1
 - Create 2 objects, count goes up to 2
 - Destroy 1 object, count goes down by 1
 
 In general more objects in memory, the slower the app tends to perform
 We want to keep the ARC count as low as possible!
 We want to only create objects when we need them
 And destroy them as soon as we no longer need them
 
 For example, if an app has 2 screens and user is moving from screen 1 to screen 2. We only want to allocate screen 2 WHEN we need it (ie. when the user clicks a button to segue to screen 2). When we get to screen 2, we may want to deallocate screen 1
 
 
 ---------
 
 MARK: MEMORY:
 - There are two types of memory called the Stack and the Heap
 
 Objects in the Stack
 - String, Bool, Int, most of your basic types including Dates
 - Structs and Enums are also in the stack
 - Arrays
 
 Objects in the Heap
 - Functions
 - Classes
 - Actors
 Objects stored in the heap increase the ARC count
 
 MARK: Multi-threaded Environment:
 - Multiple "threads or engines" running simultaneously
 - Each thread has its own Stack
 - However, all threads share a single Heap
 
 Therefore:
 - The stack is faster, lower memory footprint. The stack is preferable! (Usually why SwiftUI views are implemented using Structs)
 - The heap is slower, higher memory footprint. Risk of threading issues since you a referring to a single point within the Heaps memory.
 
 
 MARK: Value vs Reference types:
 - Objects in the Stack are "Value" types. When editing a value type, you are creating a copy of it with new data.
 - Objects in the Heap are "Reference" types. When you edit a reference type, you edit the object you are referencing. The reference is actually a "pointer" which points to an object in the Heaps memory.
 
 */


struct MyFirstObject {
    let title = "Hello, world!"
}

class MySecondObject {
    let title = "Hello, world!"
}

/*
 
 MARK: Class vs Struct explain to a 5 year old:
 
 Imagine a school and in the school there are classrooms.
 Within each class, there are quizzes.
 During the day, the teacher will hand out many different quizzes to different classes. The students will answer the quizzes and return them back to the teacher.
 
 "School"    = App
 "Classroom" = Class
 "Quiz"      = Struct
 
 In this example, we have a classroom and there are many actions that occur inside the classroom.
 In code, we create a class and can perform actions within the class.
 
 In this example, there are many different types of quizzes. The teacher hands out the quizzes and the students take the quizzes and return them to the teacher.
 In code, we create many structs and pass them around the App with ease.
 
 
 MARK: Note:
 This metaphor is not perfect and technically a "quiz" could be a class.
 
 
 We want to use a class for this like:
 - Manager, DataService, Service, Factory, ViewModel
 - Objects that we create and want to perform actions inside
 
 We want to use a struct for this like:
 - Data models (String, Int, Bools, etc)
 - Objects that we create and pass around our app with ease.
 
 */
