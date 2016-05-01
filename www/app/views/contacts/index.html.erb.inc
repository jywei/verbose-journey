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
	  			$('.contact_wrapper').css('top',(window_height / 2) - ($(".contact_block").height() / 2) - $("#main_header").height());
	  		}else if(window_width>768){
	  			$('.contact_wrapper').height(window_height - 90);
	  			$('.contact_wrapper').css('margin-top','');
	  			$('.contact_wrapper').css('top',(window_height / 2) - ($(".contact_block").height() / 2) - $("#main_header").height());
	  		}else{
	  			$('.contact_wrapper').css('height','');
	  			$('.contact_wrapper').css('margin-top',-1*window_height+50+60);
	  			$('.contact_wrapper').css('top',"");

	  		}
	  	};
	  	responsive2();
	  	$(window).resize(function(){
	  		responsive2();
	  	});

	  	$(".alert.alert-success").fadeIn("slow");
  });
</script>

<div class="contact_wrapper">
	<section class="fixed full_height">
		<div class="contact_block">
			<article>
				<h1>
					Contact Us
					<small>聯絡我們</small>
				</h1>
				<section class="detail">
					<p>
						<%= @admin_site_config.name %>
						<small><%= @admin_site_config.tax_id %></small>
					</p>
					<p>Tel : <a href="tel:<%= @admin_site_config.phone %>"><%= @admin_site_config.phone %></a></p>
					<p>Fax  : <%= @admin_site_config.fax %></p>
					<p>Address : <a href="http://maps.google.com/maps?daddr=<%= @admin_site_config.address %>"><%= @admin_site_config.address %></a></p>
				</section>
				<section class="contact_form">
					
					<% if flash[:notice] %>
						<% if flash[:notice]=="發送成功" %>
							<!-- <div class="notice">您的訊息已經發送成功</div> -->
							<div class="alert alert-success" style="display: none;padding-top: 7px;padding-bottom: 7px;margin-bottom: 10px;">
							  <span class="glyphicon glyphicon-ok-circle" aria-hidden="true"></span> 發送成功!您的訊息已經成功寄給管理員.
							</div>
						<% end %>
					<% end %>
					<%= form_for(Admin::Contact.new, :url =>{:controller => "contacts", :action => "create"}, :method => "POST") do |f| %>
						<%= f.text_field :name, :required => true, :placeholder => "Full Name"%>
						<%= f.email_field :email, :required => true, :placeholder => "Email Address" %>
						<%= f.text_area :message, :required => true, :placeholder => "Your Message" %>
						<%= f.submit 'Submit' %>
					<% end %>
				</section>
			</article>
		</div>
	</section>
</div>