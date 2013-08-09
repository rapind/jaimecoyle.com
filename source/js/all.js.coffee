#= require "_vendor/_jquery-1.10.2.js"
#= require "_vendor/_bootstrap"
#= require "_vendor/_slimbox2"
#= require_self

unless /android|iphone|ipod|series60|symbian|windows ce|blackberry/i.test(navigator.userAgent)
  jQuery ($) ->
    $(".maternity a").slimbox()
    $(".newborn a").slimbox()
    $(".family a").slimbox()



