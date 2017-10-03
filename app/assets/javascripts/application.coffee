#= require jquery_ujs
#= require bootstrap.min

jQuery ->
  forum_embed = $("#forum_embed")
  if forum_embed.length > 0
    forum_embed.attr("src", "https://groups.google.com/forum/embed/?place=forum/ruby-tr&showsearch=true&showpopout=true&parenturl=#{encodeURIComponent(window.location.href)}")

  top_navbar_right = $("#top-navbar-right")
  if top_navbar_right.children().length == 4
    top_navbar_right.children().each (index, element) =>
      if $(element).hasClass('lg-3-1')
        $(element).removeClass('lg-3-1')
        $(element).addClass('lg-4-1')