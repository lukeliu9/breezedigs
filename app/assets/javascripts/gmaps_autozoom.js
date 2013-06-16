 Gmaps.map.callback = function() {
    if (Gmaps.map.markers.length == 1) {
     //only one marker, choose the zoom level you expect
     setTimeout(function() { Gmaps.map.serviceObject.setZoom(5);}, 50);
    }
    else{
     //more than one marker, let's auto_zoom
     Gmaps.map.map_options.auto_zoom = true;
     Gmaps.map.adjustMapToBounds();
    }
  }