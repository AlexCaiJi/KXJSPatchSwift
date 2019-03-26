defineClass('JSPatchSwift.KXCrashTableVC', {
   viewDidLoad: function() {
       console.log('js viewDidLoad begin')
       self.ORIGviewDidLoad()
       console.log('js viewDidLoad end')
   },

   testLog: function() {
        console.log('js ViewController testlog')
    },

   tableView_cellForRowAtIndexPath: function(tableView, indexPath) {
       console.log('tableView_cellForRowAtIndexPath testlog')
       var cell = tableView.dequeueReusableCellWithIdentifier("reuseIdentifier")
       cell.textLabel().setText(self.dataArray().toJS()[indexPath.row()])
       return cell
   }
            
            
})
