import Dispatch

let source = DispatchSource.makeUserDataReplaceSource()

source.setEventHandler {
  print("here")
  exit(0)
}

source.resume()
source.replace(data: 1)
dispatchMain()
