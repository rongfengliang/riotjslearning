<example-tag>
  <p class="demo" id="findMe">Do I even Exist?</p>
  <todo></todo>
  <script>
  var options = require("./app.css");
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
    console.log(options);
    console.log('test3', test3) // Succeeds, fires once (per mount)
  })
  </script>
</example-tag>
<todo>

  <!-- layout -->
  <h3>{ opts.title }</h3>

  <ul>
    <li each={ item, i in items }>{ item }</li>
  </ul>

  <form onsubmit={ add }>
    <input ref="input">
    <button>Add #{ items.length + 1 }</button>
  </form>

  <!-- style -->
  <style>
    h3 {
      font-size: 14px;
    }
  </style>

  <!-- logic -->
  <script>
    this.items = []

    add(e) {
      e.preventDefault()
      var input = this.refs.input
      if(input.value!=""){
       this.items.push(input.value)
       input.value = ''
      }
      console.log(input.value);
    }
  </script>

</todo>