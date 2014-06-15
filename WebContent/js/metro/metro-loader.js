var plugins = [
   
    'dropdown'


];

$.each(plugins, function(i, plugin){
    $("<script/>").attr('src', 'js/metro/metro-'+plugin+'.js').appendTo($('head'));
});
