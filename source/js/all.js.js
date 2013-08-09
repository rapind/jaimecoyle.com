
if (!/android|iphone|ipod|series60|symbian|windows ce|blackberry/i.test(navigator.userAgent)) {
  jQuery(function($) {
    $(".maternity a").slimbox();
    $(".newborn a").slimbox();
    return $(".family a").slimbox();
  });
}
