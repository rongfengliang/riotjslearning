<example-tag>
  <p id="findMe">Do I even Exist?</p>

  <script>
  var test1 = document.getElementById('findMe')
  console.log('test1', test1)  // Fails

  this.on('update', function(){
    var test2 = document.getElementById('findMe')
    console.log('test2', test2) // Succeeds, fires on every update
  })
   clickdemo=function(e){
     console.log(e);
   }
  this.on('mount', function(){
    var test3 = document.getElementById('findMe')
    console.log('test3', test3) // Succeeds, fires once (per mount)
  })
  </script>
</example-tag>