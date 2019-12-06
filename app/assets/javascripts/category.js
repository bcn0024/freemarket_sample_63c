$(function(){
  $("#parent-form").on("change", function(){
    var parentValue = document.getElementById("parent-form").value;
    console.log(parentValue);

    $.ajax ({
      url: "/products/search",
      type: "GET",
      data: {
        parent_id: parentValue
      },
      dataType: 'json'
    })
  })
})