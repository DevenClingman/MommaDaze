$(document).on('turbolinks:load', function() {
  
  //modal

  $('#checkbox-category').hide();

  $('#category').click(function() {
    $('#checkbox-category').slideToggle(1500);
  });

  //checkbox
  var tagList = [];

  var poop = document.getElementById("poop");
  var edible = document.getElementById("edible");
  var inedible = document.getElementById("inedible");
  var tantrums = document.getElementById("tantrums");
  var tummyTroubles = document.getElementById("tummy_troubles");
  var tasmanianDevils = document.getElementById("tasmanian_devils");
  var mischiefMakers = document.getElementById("mischief_makers");
  var eyeRolls = document.getElementById("eye_rolls");
  var littleArtists = document.getElementById("little_artists");
  var ouch = document.getElementById("ouch");
  var growingPains = document.getElementById("growing_pains");
  var brokenUhoh = document.getElementById("broken_uhoh");
  var worthwhilePerks = document.getElementById("worthwhile_perks");
  var pottyTraining = document.getElementById("potty_training");
  var kidWins = document.getElementById("kid_wins");
  var tryAgainTomorrow = document.getElementById("try_again_tomorrow");

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
  updateArray(edible, "Edible", tagList);
  updateArray(inedible, "Inedible", tagList);
  updateArray(tantrums, "Tantrums", tagList);
  updateArray(tummyTroubles, "Tummy Troubles", tagList);
  updateArray(tasmanianDevils, "Tasmanian Devils", tagList);
  updateArray(mischiefMakers, "Mischief Makers", tagList);
  updateArray(eyeRolls, "Eye Rolls", tagList);
  updateArray(littleArtists, "Little Artists", tagList);
  updateArray(growingPains, "Growing Pains", tagList);
  updateArray(brokenUhoh, "Broken -Uhoh", tagList);
  updateArray(worthwhilePerks, "Worthwhile Perks", tagList);
  updateArray(pottyTraining, "Potty Training", tagList);
  updateArray(kidWins, "Kid Wins", tagList);
  updateArray(tryAgainTomorrow, "Try Again Tomorrow", tagList);











});