import Foundation


let group = DispatchGroup()
group.enter()

Task {
    defer { group.leave() }
    await Builder.main()
}

group.wait()
