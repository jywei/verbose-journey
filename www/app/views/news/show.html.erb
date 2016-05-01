<div id="fb-root"></div>
<script>
(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/zh_TW/sdk.js#xfbml=1&version=v2.3&appId=425211967534046";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));
</script>

<div class="news_post_wrapper">
	<section class='main_visual'>
		<%= image_tag('news_banner_2.png') %>	
	</section>

	<section class='fixed'>
		<div class='news_post_block'>
			<article class="news_article">
				<h1><%= @admin_news.title %></h1>
				<section class="share_area">
					<span class="date"><%= @admin_news.date_of_news.strftime("%Y - %m - %d") %></span>
					<div class="fb-share-button" data-href="<%= news_path(@admin_news.id) %>" data-layout="button_count"></div>
					<div class="fb-like" data-href="<%= news_path(@admin_news.id) %>" data-layout="button_count" data-action="like" data-show-faces="false" data-share="false"></div>
				</section>
				<section class="article">
					<div class="img">
						<% if @admin_news.main_visual2.present? %>
							<%= image_tag(@admin_news.main_visual2.url) %>
						<% else %>
							<%= image_tag(@admin_news.main_visual.url) %>
						<% end %>
					</div>
					<div class="content"><%= simple_format(@admin_news.content) %></div>
<% if @admin_news.is_order_form? %>
<div class="contact_wrapper2">
	<section class="fixed full_height">
		<div class="contact_block">
			<article>
				<h1>
					Order/ Contact Us
					<small>訂購單/ 聯絡我們</small>
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
<% end %>
				</section>
			</article>
			<article class="other_news">
				<h1>POPULAR POSTS</h1>
				<% @other_news.each do |news| %>
					<a href="<%= news_path(news.id) %>" data-no-turbolink>
						<section>
							<%= image_tag(news.main_visual.small.url) %>
							<div class="title">
								<%= news.title%>
							</div>
							<footer>
								<div class="date">
									<%= news.date_of_news.strftime("%Y.%m.%d") %>
								</div>
								<div class="fb-share-button" data-href="<%= news_path(news.id) %>" data-layout="button_count"></div>
								<div class="read_me">READ MORE</div>
							</footer>
						</section>
					</a>
				<% end %>
			</article>
		</div>
	</section>
</div>


<!-- Facebook Conversion Code for 促銷訊息 -->
<script>(function() {
var _fbq = window._fbq || (window._fbq = []);
if (!_fbq.loaded) {
var fbds = document.createElement('script');
fbds.async = true;
fbds.src = '//connect.facebook.net/en_US/fbds.js';
var s = document.getElementsByTagName('script')[0];
s.parentNode.insertBefore(fbds, s);
_fbq.loaded = true;
}
})();
window._fbq = window._fbq || [];
window._fbq.push(['track', '6024400049837', {'value':'0.00','currency':'TWD'}]);
</script>
<noscript><img height="1" width="1" alt="" style="display:none" src="https://www.facebook.com/tr?ev=6024400049837&amp;cd[value]=0.00&amp;cd[currency]=TWD&amp;noscript=1" /></noscript>
