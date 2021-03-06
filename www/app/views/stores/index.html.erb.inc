<script src="https://maps.googleapis.com/maps/api/js?v=3.exp&signed_in=true&language=zh-tw"></script>
<div class="home_wrapper">
	<section class='fixed'>
		<%= render :partial => 'shared/brand_block' %>
	</section>
</div>
<script type="text/javascript">

 $(document).ready(function(){
	  	var responsive2 = function(){
	  		var window_height = $(window).height();

	  		if (detectmob()){
				window_height = window.screen.height;
	  		}

	  		var window_width = $(window).width();
	  		if(window_width>1440){
	  			$('.store_wrapper').height(window_height - 90);
	  			$('.store_wrapper').css('top',(window_height / 2) - ($(".store_block").height() / 2) - $("#main_header").height());
	  		}else if(window_width>768){
	  			$('.store_wrapper').height(window_height - 90);
	  			$('.store_wrapper').css('margin-top','');

				$('#map-canvas').css({'height':""});
				$('.store_wrapper').css('top',(window_height / 2) - ($(".store_block").height() / 2) - $("#main_header").height());
	  		}else{
	  			$('.store_wrapper').css('height','');
	  			$('.store_wrapper').css('margin-top',-1*window_height+50+60);

	  			var map_width = $('#map-canvas').width();
				$('#map-canvas').css({'height':map_width+'px'});
				$('.store_wrapper').css('top',"");
	  		}
	  	};
	  	responsive2();
	  	$(window).resize(function(){
	  		responsive2();
	  	});
  });
</script>


<div class="store_wrapper">
	<section class="fixed full_height">
		<div class="store_block">
			<article>
				<h1>
					WHERE TO BUY?
					<small>哪裡買</small>
				</h1>
				<section class="left">
					<div class="map">
						<div id="map-canvas"></div>
					</div>
				</section>
				<section class="right">
					<div class="search">
						<section>
							<%= form_tag('/stores/search', :id => 'search_form', method: :post, remote: true) do |f| %>
								<%= select_tag "brand", options_from_collection_for_select(Admin::Brand.where(:is_public => true), "id", "select_name", @brand_id), include_blank: false %>
								<%#= select_tag "product", options_from_collection_for_select(Admin::Product.all, "id", "select_name"), include_blank: false %>
								<%= grouped_collection_select(:product, :id, Admin::Brand.order('name'), :products, "select_name", :id, "select_name") %>
								<%= select_tag "area", options_from_collection_for_select(Admin::Area.all, "id", "select_name"), include_blank: false %>
								<%= submit_tag 'Search 搜尋' %>
							<% end %>
						</section>
					</div>
					<div class="resault">
						<section>
							<header>尚未搜尋</header>
						</section>
						<!-- <section>
							<header>A - ONORE KING 耀金台</header>
							<span>- 台北市承德路一段43號1F</span>
							<span>- (02) 8731 - 2777</span>
						</section>
						<section>
							<header>A - ONORE KING 耀金台</header>
							<span>- 台北市承德路一段43號1F</span>
						</section>
						<section>
							<header>A - ONORE KING 耀金台</header>
							<span>- 台北市承德路一段43號1F</span>
						</section> -->
					</div>
				</section>

				<footer>
					<span>電話洽詢/訂購:<a href="tel:<%= @admin_site_config.phone %>"><%= @admin_site_config.phone %></a> 鴻向國際</span>
				</footer>
			</article>
		</div>
	</section>
</div>

<script type="text/javascript">
	(function() {
	  jQuery(function() {
	    var Brand, options, products;
	    products = $('#product_id').html();
	    Brand = $('#brand :selected').text();
	    options = $(products).filter("optgroup[label='" + Brand + "']").html();
	    if (options) {
	      $('#product_id').html(options);
	    } else {
	      $('#product_id').empty();
	    }
	    return $('#brand').change(function() {
	      Brand = $('#brand :selected').text();
	      options = $(products).filter("optgroup[label='" + Brand + "']").html();
	      if (options) {
	        return $('#product_id').html(options);
	      } else {
	        return $('#product_id').empty();
	      }
	    });
	  });

	}).call(this);

</script>

<!-- google map -->
<script>

 	// var point = [[25.048215, 121.517123],[25.050401, 121.519200]];
 	var point = [];
 	var default_center_x = 25.048215;
 	var default_center_y = 121.517123;
	function initialize(center_x, center_y, map_point) {
	  var geocoder;
	  geocoder = new google.maps.Geocoder();
	  var mapOptions = {
	    zoom: 10,
	    center: new google.maps.LatLng(center_x, center_y)
	  };
	  var map = new google.maps.Map(document.getElementById('map-canvas'),
	      mapOptions);
	  	if (map_point.length > 0) {
			set_marker(map,map_point);
		}
	}

	function set_marker(map, map_point) {
		for (i = 0; i <map_point.length; i++){
			new google.maps.Marker({
				map: map,
				position: new google.maps.LatLng(map_point[i][0], map_point[i][1]),
				icon: 'http://chart.apis.google.com/chart?chst=d_map_pin_letter&chld=' + String.fromCharCode(65 + i) + '|FF0000|000000'
			});
		}
	}

	function point_to_map(x, y, map_point) {
		google.maps.event.addDomListener(window, 'load', initialize(x, y, map_point));
	}
	google.maps.event.addDomListener(window, 'load', initialize(default_center_x, default_center_y, point));
</script>


<!-- search resault -->
<script type="text/javascript">
  $(document).ready(function(){
    $('#search_form').on('ajax:success',function(e, data, status, xhr){
      // $('#search_form').text('Done.');
      $(".resault").html("");

      var tmpPoint = [];
      var centerPoint_x;
      var centerPoint_y;
      for (i=0;i< data.length;i++){
      	var tmpStr = "";
      	if (data[i]["name"] != "" && data[i]["address"] != "") {
      		tmpStr = "<section>";
      		tmpStr = tmpStr + "<header>"+ String.fromCharCode(65 + i) + ". "  + data[i]["name"] + "</header>";
  		tmpStr = tmpStr +"<span>- " + data[i]["address"] + "</span>"
      		if (data[i]["phone"] != "") {
      			tmpStr = tmpStr +"<span>- <a href='tel:" + data[i]["phone"] + "'>" + data[i]["phone"] + "<a></span>"
      		}
      		tmpStr = tmpStr + "</section>";
      		$( ".resault" ).append( tmpStr );

      		var twoPoint = [[data[i]["google_map_x"]],[data[i]["google_map_y"]]];
      		tmpPoint.push(twoPoint);

      		centerPoint_x = data[i]["area"]["google_map_x"];
      		centerPoint_y = data[i]["area"]["google_map_y"];
      	}
      }

      point_to_map(centerPoint_x, centerPoint_y, tmpPoint);
    }).on('ajax:error',function(e, xhr, status, error){
      var tmpStr = "<section><header>未搜尋到任何結果</header></section>";
      $( ".resault" ).html( tmpStr );
      point_to_map(default_center_x, default_center_y, point);
    });
  });
</script>

<!-- click search -->
<% if @product_id.present? %>
	<script type="text/javascript">
		$(document).ready(function(){
			$('#brand').val("<%= @brand_id %>");
			$('#product_id').val("<%= @product_id %>");
			$("#search_form").submit();
		});
	</script>
<% end %>
