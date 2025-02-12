import Foundation

private func run(_ command: String, _ arguments: [String] = []) -> Bool {
    let process = Process()
    process.executableURL = URL(fileURLWithPath: "/usr/bin/env")
    process.arguments = [command] + arguments

    do {
        try process.run()
        process.waitUntilExit()
        return process.terminationStatus == 0
    } catch {
        print("Error executing command: \(error)")
        return false
    }
}

func main() {
    var input: Bool? {
        switch CommandLine.arguments[1].lowercased() {
        case "true":
            return true
        case "false":
            return false
        default:
            return nil
        }
    }

    guard let input, CommandLine.arguments.count == 1 else {
        print("Usage: sss <true|false>")
        exit(1)
    }

    guard run("defaults", ["write", "com.apple.screencapture", "disable-shadow", "-bool", (!input).description]) else {
        print("Something went wrong.")
        exit(1)
    }
    print("SystemScreenShots - \(input) finished.")
}

main()
