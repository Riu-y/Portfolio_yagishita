			<script>
				var map;
				function initMap(){
					var lat_lng ={ lat: <%= @ad_client.latitude %>, lng: <%= @ad_client.longitude %>}

					map = new google.maps.Map(document.getElementById('map'),{
						center: lat_lng,
						zoom: 12
					});
					marker = new google.map.Marker({
						position: lat_lng,
						map: map
					});
				}
			</script>