$( document ).ready(function() {
  var tagList = [];
  var listOfTags = [];
  var poop = document.getElementById("poop");
  var mess = document.getElementById("mess");
  var busted = document.getElementById("busted");
  var uhoh = document.getElementById("uhoh");

  var text_field = document.getElementById("text_field");

  function remove(array, element) {
    const index = array.indexOf(element);
    array.splice(index, 1);
}

  function updateArray(idName, text, array){
    idName.onchange = function() {
    if (tagList.includes(text)){
      remove(tagList, text);
    } else {
      tagList.push(text);
    }
    text_field.value = tagList;
  }
}

  updateArray(poop, "Poop", tagList);
  updateArray(mess, "Mess", tagList);
  updateArray(busted, "Busted", tagList);
  updateArray(uhoh, "Uhoh", tagList);



});