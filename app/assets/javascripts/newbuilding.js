$(document).ready(function() {
  $('#cities_select').change(function() {
    $.ajax({
      url: "<%= update_areas_path %>",
      data: {
        city_id : $('#cities_select').val()
      },
      dataType: "script"
    });
  });
  $('#areas_select').change(function() {
    $.ajax({
      url: "<%= update_neighborhoods_path %>",
      data: {
        area_id : $('#areas_select').val()
      },
      dataType: "script"
    });
  });
});
