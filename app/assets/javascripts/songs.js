// JS toevoegen

function createNewSong(name) {

  var newSong = {name: name}

  $.ajax({
    type: "POST",
    url: "api/artists"
    data: JSON.stringify({
        song: newSong
    }),
    contentType: "application/json",
    dataType: "json"
  });
  .done(function(data) {
    console.log(data);


  var checkboxId = "song-" + nextSongId();

  nextSongId() {
    return $(".song").length + 1;
  }

  var listItem = $("<li></li>")
  listItem.addClass("songs");

  var checkbox = $('<input>');
  checkbox.attr('type', 'checkbox');
  checkbox.attr('id', checkboxId);
  // checkbox.val(1)

  var label = $('<label></label>');
  label.attr('for', checkboxId);
  label.html(name);

  listItem.append(checkbox);
  listItem.append(label);

  $(".songs").append(listItem);
}



function submitNewSong(event) {
    event.preventDefault();
    var name = $("#new-song").val();
    createNewSong(name);
    $("new-song").val(null);
  }

$(document).ready(function() {
  $("form").bind('submit', submitNewSong);
});
