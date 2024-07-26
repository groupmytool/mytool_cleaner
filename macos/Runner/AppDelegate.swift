import Cocoa
import FlutterMacOS

@NSApplicationMain
class AppDelegate: FlutterAppDelegate {

  override func applicationShouldTerminateAfterLastWindowClosed(_ sender: NSApplication) -> Bool {
    return true
  }

  // 设置窗口的最小值
  override func applicationDidFinishLaunching(_ aNotification: Notification) {
    if let window = NSApplication.shared.windows.first {
      window.minSize = NSSize(width: 1200, height: 900)
    }
  }

}
