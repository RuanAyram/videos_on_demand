$(document).ready(function() {
  if (window.location.href.indexOf("/videos/") > -1) {
    var player = videojs('vid1');
    player.play();
  }
})
