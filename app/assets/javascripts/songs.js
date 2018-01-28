// JS toevoegen

// function removeSong(event){
//   event.preventDefault();
//
//   var checkbox = this;
//   $(checkbox).parent().remove();
//
// }

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
          var buttonId = "delete-song" + nextSongId();

          nextSongId() {
            return $(".song").length + 1;
          }

          var listItem = $("<li></li>")
          listItem.addClass("songs");

          var checkbox = $('<input>');
          checkbox.attr('type', 'checkbox');
          checkbox.attr('id', checkboxId);
          // checkbox.bind('change', removeSongWithCheckbox);
          checkbox.onchange (removeSongWithCheckbox.bind(checkbox))

          var button = $('<input>')
          button.attr('type', 'button')
          button.attr('id', buttonId);
          button.addClass("remove")


          var label = $('<label></label>');
          label.attr('for', checkboxId);
          label.html(name);


          listItem.append(checkbox);
          listItem.append(label);
          listItem.append(button);


          $(".songs").append(listItem);

}

      function submitNewSong(event) {
        event.preventDefault();
        var name = $("#new-song").val();
        createNewSong(name);
        $("new-song").val(null);
      }

      // DELETE SONGS
      //
      function removeSongs(event) {
        event.preventDefault();
        $(".songs").remove();
      }

      // function removeSongs(event) {
      //   event.preventDefault();
      //   $.each($(".songs"), function(index, tableRow) {
      //     songId = $(tableRow).data('id');
      //     deleteSongs(songId);
      //   });
      // }
      //
      // function deleteSongs(songId) {
      //   $.ajax({
      //     type: "DELETE"
      //     url: "api_artist_song"
      //     contentType: "application/json"
      //     dataType: "json"
      //   })
      //   .done(function(data)) {
      //     $('tr[data-id="'+songId'"]').remove();
      //   });
      // }

      $songs.delegate('.remove','click', function()  {

        var $li = $(this).closest('li');

        $.ajax({
          type: 'DELETE',
          url: 'api/artists/songs' + $(this).attr('id'),
          success: function (){
            $li.remove();
          }
        })
      });

      function removeSongWithButton(){
        var button = this;
        $(button).parent().remove();
      }

      function removeSongWithCheckbox(){
        var checkbox = this;
          $(checkbox).parent().remove();
        }
      //   var tableRow = $(this).parent();
      //   var songId = tableRow.data('id');
      //

      function removeSongWithLink(event) {
        event.preventDefault();
        $("#delete-song-<%=@song.id%>").remove();
      }


      $(document).ready(function() {
        $("form").bind('submit', submitNewSong);
        $("#remove-songs").bind('click', removeSongs);
        $("input[type=checkbox]").bind('change',removeSongWithCheckbox);
        $("#delete-song").bind('click', removeSongWithLink);
      };
