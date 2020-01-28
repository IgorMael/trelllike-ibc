
$(document).on('turbolinks:load', function() {
    $("#steps-container").sortable({
      placeholder: "sortable-placeholder",
      forcePlaceholderSize: true,
      sort: function(event, ui){
          $(".dragged").height(ui.item.outerHeight());
     },
     start: function (event, ui) {
      ui.item.toggleClass('dragged');
      },
  
      stop: function (event, ui) {
          ui.item.toggleClass('dragged');
      },
      update: function(e, ui) {
        Rails.ajax({
          url: $(this).data("url"),
          type: "PATCH",
          data: $(this).sortable("serialize")
        })
      }
    })
  
    $(".tasks-container").sortable({
      placeholder: "sortable-placeholder",
      forcePlaceholderSize: true,
      sort: function(event, ui){
          $(".sortable-placeholder").height(ui.item.outerHeight());
     },
      connectWith: ".tasks-container", 
      start: function (event, ui) {
          ui.item.toggleClass('dragged');
          },
      
          stop: function (event, ui) {
              ui.item.toggleClass('dragged');
          },
      update: function(e, ui) {
        Rails.ajax({
          url: $(this).data("url"),
          type: "PATCH",
          data: $(this).sortable("serialize")
        })
      }
    })
  });