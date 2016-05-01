
<div id="fb-root"></div>
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/zh_TW/sdk.js#xfbml=1&version=v2.3&appId=425211967534046";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>


 <script type="text/javascript">
	  // $(document).ready(function(){
	  // 	var set_article_height = function(){

	  // 	}

	  // });
</script>



<div class='news_wrapper'>

	<section class='main_visual'>
		<%= image_tag('news_banner.jpg') %>		
	</section>

		<section class='fixed'>
			<div class='news_container'>
				<header class='main_title'>
					<h1>NEWS</h1>
				</header>

				<% @admin_news.each do |news| %>
					<a href='<%= news_path(news.id) %>' class='buttom' data-no-turbolink>
						<article>
							
							<section class='share_area'>
								<div class='time_block'>
									<span class='d'><%= news.date_of_news.strftime("%d") %>,</span>
									<span class='m'><%= news.date_of_news.strftime("%b") %>,</span>
									<span class='y'><%= news.date_of_news.strftime("%Y") %></span>
								</div>
								<!-- <div class="fb-share-button" data-href="<%= news_path(news.id) %>" data-layout="box_count"></div> -->
								<div class="fb-like" data-href="<%= news_path(news.id) %>" data-layout="box_count" data-action="like" data-show-faces="false" data-share="true"></div>
								<!-- Share -->
							</section>

							<section class='atc_main_visual'>
								<%= image_tag(news.main_visual.large.url) %>
							</section>


							<section class='atc_text'>
								<div class='time'><%= news.date_of_news.strftime("%Y.%m.%d") %></div>
								<h1 class='title'><%= news.title %></h1>
								<div class='discription'>
									<%= strip_tags(news.get_long_content).gsub("&nbsp;", "").gsub("&quot;", "").gsub("&amp;", "") %>
								</div>
								<div class='buttom' data-no-turbolink>
									READ MORE
								</div>
							</section>

						</article>
					</a>
				<% end %>

				<!-- <article>
					
					<section class='share_area'>
						<div class='time_block'>
							<span class='d'>21,</span>
							<span class='m'>may,</span>
							<span class='y'>2015</span>
						</div>
						<div class="fb-share-button" data-href="http://www.jibako.com" data-layout="box_count"></div>
					</section>
					<section class='atc_main_visual'>
						<%= image_tag('news_tmp/1.jpg') %>
					</section>


					<section class='atc_text'>
						<div class='time'>2015.05.08</div>
						<h1 class='title'>Happy Birthday Direct</h1>
						<div class='discription'>
							Casamigos Tequila又有新的門市在販售囉！位於承德路上鄰近台北火車站與京站的ONORE KING 耀金台,Casamigos Tequila又有新的門市在販售囉！位於承德路上鄰近台北火車站與京站的ONORE KING 耀金台...
						</div>
						<a href='#' class='buttom'>
							READ MORE >>
						</a>
					</section>

				</article>

				<article>
					
					<section class='share_area'>
						<div class='time_block'>
							<span class='d'>21,</span>
							<span class='m'>may,</span>
							<span class='y'>2015</span>
						</div>
						<div class="fb-share-button" data-href="http://www.jibako.com" data-layout="box_count"></div>
					</section>
					<section class='atc_main_visual'>
						<%= image_tag('news_tmp/1.jpg') %>
					</section>


					<section class='atc_text'>
						<div class='time'>2015.05.08</div>
						<h1 class='title'>Happy Birthday Direct</h1>
						<div class='discription'>
							Casamigos Tequila又有新的門市在販售囉！位於承德路上鄰近台北火車站與京站的ONORE KING 耀金台,Casamigos Tequila又有新的門市在販售囉！位於承德路上鄰近台北火車站與京站的ONORE KING 耀金台...
						</div>
						<a href='#' class='buttom'>
							READ MORE >>
						</a>
					</section>

				</article> -->

				
					
			</div>

		</section>


</div>