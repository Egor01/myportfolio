

function initMap() {
	
	var isDraggable;
	if( /Android|webOS|iPhone|iPad|iPod|BlackBerry|IEMobile|Opera Mini/i.test(navigator.userAgent) ) {
		isDraggable = false;
	} else {
		isDraggable = true;
	}

	
	myMap = new google.maps.Map(document.getElementById("map"), {
    center: place,
    zoom: 13,
    disableDefaultUI: true,
    draggable: isDraggable,
    styles: [
      {
        featureType: "administrative",
        elementType: "labels.text.fill",
        stylers: [{ color: "#444444" }]
      },
      {
        featureType: "landscape",
        elementType: "all",
        stylers: [{ color: "#f2f2f2" }]
      },
      {
        featureType: "poi",
        elementType: "all",
        stylers: [{ visibility: "off" }]
      },
      {
        featureType: "road",
        elementType: "all",
        stylers: [{ saturation: -100 }, { lightness: 45 }]
      },
      {
        featureType: "road.highway",
        elementType: "all",
        stylers: [{ visibility: "simplified" }]
      },
      {
        featureType: "road.arterial",
        elementType: "labels.icon",
        stylers: [{ visibility: "off" }]
      },
      {
        featureType: "transit",
        elementType: "all",
        stylers: [{ visibility: "off" }]
      },
      {
        featureType: "water",
        elementType: "all",
        stylers: [{ color: "#46bcec" }, { visibility: "on" }]
      }
    ]
  });

	var markerZelenograd = new google.maps.Marker({

		position: place,
	    map: myMap,
	    title: 'Зеленоград',
	    icon: '../templates/assets/img/maps/pin-green.png'

	});

	var contentStringPlace = '<div id="content">' + '<div id="siteNotice">' + "</div>" + '<h1 id="firstHeading" class="firstHeading">Московская обл.</h1>' + '<div id="bodyContent">' + "г. Зеленоград</p>" + "</div>" + "</div>";
	
	var infowindowPlace = new google.maps.InfoWindow({
		content: contentStringPlace,
    maxWidth: 400
  });

	markerZelenograd.addListener('click', function() {
		infowindowZelenograd.open(myMap, markerPlace);
	});

}

