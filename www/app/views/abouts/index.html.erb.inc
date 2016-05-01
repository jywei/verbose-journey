<!-- 

<div class='test'>
	
</div>
<div class='test2'>
	
</div> -->



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
	  			$('.about_wrapper').height(window_height - 90);
	  			$('.about_wrapper').css('top',(window_height / 2) - ($(".about_block").height() / 2) - $("#main_header").height());

	  			var window_margin_top = ($(".staff_block").height() - ($(".staff_block .staff_photo").height() + 20) - $(".staff_block .window").height()) / 2;
	  			if (window_margin_top > 0){
		  			$(".staff_block .window").css("margin-top", window_margin_top);
		  		}


		  		
		  		
		  		$(".history_block .window").css("margin-top",($(".history_block").height() - $(".history_block header").height() - $(".history_block .window").height()) / 2);

	  		}else if(window_width>768){
	  			// $('.about_wrapper').css('top','');
	  			$('.about_wrapper').height(window_height - 90);
	  			$('.about_wrapper').css('margin-top','');
	  			$('.about_wrapper').css('top',(window_height / 2) - ($(".about_block").height() / 2) - $("#main_header").height());
	  			$(".staff_block .window").css("margin-top", "");
	  			$(".history_block .window").css("margin-top", "");
	  		}else{
	  			$('.about_wrapper').css('top','');
	  			$('.about_wrapper').css('height','');
	  			$('.about_wrapper').css('margin-top',-1*window_height+50+60);
	  			$(".history_block .window").css("margin-top", "");

	  		}
	  	};
	  	responsive2();
	  	$(window).resize(function(){
	  		responsive2();
	  	});
  });
</script>


<div class="about_wrapper">
	<section class="fixed full_height">
		<div class="about_block">
			<article>
				<header>
					<%= image_tag('logo/w6.png',:class=>'about_logo') %>
					<h1>鴻向國際股份有限公司</h1>	
				</header>
				<div class='window scrollbar_css'  id="scrollbar1">
					<div class="scrollbar"><div class="track"><div class="thumb"><div class="end"></div></div></div></div>
					<div class="viewport">
						<div class="overview">
							<section class='about_content'>
								<h1><%= @admin_about.title_area_1 %></h1>
								<%= simple_format(@admin_about.content_area_1) %>

							</section>
							<section class='about_content'>
								<h1><%= @admin_about.title_area_2 %></h1>
								<%= simple_format(@admin_about.content_area_2) %>

							</section>
						</div>
					</div>
				</div>
			</article>
		</div>




		<div class="staff_block">
			<article>
				<!-- <section class='staff_title'>
					<h2><%= @admin_about.staff.office %></h2>
					<h1><%= @admin_about.staff.name %></h1>
					<h3><%= @admin_about.staff.slogan %></h3>
					<h3><%= @admin_about.staff.slogan2 %></h3>
				</section> -->
				<section class='staff_photo'>
					<%= image_tag(@admin_about.staff.photo.url) %>
				</section>

				<div class='window scrollbar_css'  id="scrollbar2">
					<div class="scrollbar"><div class="track"><div class="thumb"><div class="end"></div></div></div></div>
					<div class="viewport">
						<div class="overview">
							<section class='staff_description'>
								<%= simple_format(@admin_about.staff.content) %>
							</section>
						</div>
					</div>
				</div>
				 
			</article>
		</div>
		<div class="history_block">
			<article>
				<header>
					<p>
						<a class='title_en'>History </a><a class='title_ch'>歷史紀事</a>
					</p>
				</header>
				<div class='window scrollbar_css'  id="scrollbar3">
					<div class="scrollbar"><div class="track"><div class="thumb"><div class="end"></div></div></div></div>
					<div class="viewport">
						<div class="overview">
							<section>
								<% if @admin_histories.present? %>
									<ul>
										<% @admin_histories.each do |history| %>
											<li><%= history.content %></li>
										<% end %>

									</ul>
								<% end %>
							</section>
						</div>
					</div>
				</div>
			</article>
			
		</div>
	</section>
</div>



<script type="text/javascript">
	$(".staff_block .staff_photo img").load(function(){
		var window_margin_top = ($(".staff_block").height() - ($(".staff_block .staff_photo").height() + 20) - $(".staff_block .window").height()) / 2;
		if (window_margin_top > 0){
			$(".staff_block .window").css("margin-top", window_margin_top);
		}
	});
</script>


<!-- <div class="about_wrapper">
	<div class="about_block">
		<article>
			<%= @admin_about.title_area_1 %>
			<%= @admin_about.content_area_1 %>
			<%= @admin_about.title_area_2 %>
			<%= @admin_about.content_area_2 %>
		</article>
	</div>
	<div class="staff_block">
		<article>
			<%= @admin_about.staff.office %>
			<%= @admin_about.staff.name %>
			<%= @admin_about.staff.slogan %>
			<%= @admin_about.staff.content %>
		</article>
	</div>
	<div class="history_block">
		<section></section>
	</div>
</div> -->

<script type="text/javascript">
            $(document).ready(function(){
                $('#scrollbar1').tinyscrollbar();
                $('#scrollbar1').find(".scrollbar").fadeOut();   
                $('#scrollbar2').tinyscrollbar();
                $('#scrollbar2').find(".scrollbar").fadeOut();   
                $('#scrollbar3').tinyscrollbar();
                $('#scrollbar3').find(".scrollbar").fadeOut();   
            });
            $('#scrollbar1').hover(function(){   
	    $(this).find(".scrollbar").fadeIn();   
	}, function(){   
	    $(this).find(".scrollbar").fadeOut();   
	});  
            $('#scrollbar2').hover(function(){   
	    $(this).find(".scrollbar").fadeIn();   
	}, function(){   
	    $(this).find(".scrollbar").fadeOut();   
	});  
            $('#scrollbar3').hover(function(){   
	    $(this).find(".scrollbar").fadeIn();   
	}, function(){   
	    $(this).find(".scrollbar").fadeOut();   
	});  
</script>

