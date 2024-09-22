
/*lanrenzhijia*/
jQuery(function(){
	jQuery("#contraction").click(function(){
		jQuery(".box-lanrenzhijia").animate({
        height: '30px',bottom:'0px'
    }, 1000, 'linear', function() { jQuery(".pop_Content").hide(); });
	jQuery("#contraction").hide();
	jQuery("#open_window").show();
	});
	
	jQuery("#open_window").click(function(){
		jQuery(".box-lanrenzhijia").animate({
        height: '200px'
    }, 10, 'linear', function() { jQuery(".pop_Content").show(); });
	jQuery("#open_window").hide();
	jQuery("#contraction").show();
	});
	
	jQuery("#close_window").click(function(){
		jQuery(".box-lanrenzhijia").hide();
	});
});

function closeDiv()
 {
  document.getElementById('pop').style.visibility='hidden';
 }