jQuery(document).ready(function($) {
  if (window.location.href.indexOf("/videos/") > -1) {
    console.log("It works on each visit!");
    var player = videojs('vid1');
    player.play();
  }
})