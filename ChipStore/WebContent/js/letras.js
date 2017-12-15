var $z = jQuery.noConflict();
$z(document).ready(function(){
$z("#aumentar-fonte").click(function () {
var size = $z("div").css('font-size');

size = size.replace('px', '');
size = parseInt(size) + 2;

$z("div").animate({'font-size' : size + 'px'});
return false;
});

$z("#diminuir-fonte").click(function () {
var size = $z("div").css('font-size');

size = size.replace('px', '');
size = parseInt(size) - 2;

$z("div").animate({'font-size' : size + 'px'});
return false;
});
});
