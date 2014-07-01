#= require jquery_ujs
#= require bootstrap.min

jQuery ->
  forum_embed = $("#forum_embed")
  if forum_embed.length > 0
    forum_embed.attr("src", "https://groups.google.com/forum/embed/?place=forum/ruby-tr&showsearch=true&showpopout=true&parenturl=#{encodeURIComponent(window.location.href)}")
