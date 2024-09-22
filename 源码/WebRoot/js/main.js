$(document).ready(function(){
    var num;
    $('.nav-main>li[id]').hover(function(){
        var Obj = $(this).attr('id');
        num = Obj.substring(3, Obj.length);
        $('#box-'+num).slideDown(300);
    },function(){
        $('#box-'+num).hide();
    });
    $('.hidden-box').hover(function(){
        $(this).show();
    },function(){
        $(this).slideUp(200);
        $('#li-'+num).children().removeClass().addClass('hover-down');
    });
	
	//调用文字滚动
	setInterval('AutoScroll("#scrollFocus")',3000);
});

//文字滚动
function AutoScroll(obj){
		$(obj).find("ul:first").animate({
			marginTop:"-65px"
		},500,function(){
			$(this).css({marginTop:"0px"}).find("li:first").appendTo(this);
		});
	}
