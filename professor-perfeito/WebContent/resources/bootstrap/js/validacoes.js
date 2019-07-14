$(function(){
	   $("#limit").each(function (i) {
	       var text = $(this).text();
	       var len = text.length;
	       if (len > 45) {
	           var query = text.split(" ", 10);
	           query.push('...');
	           res = query.join(' ');
	           $(this).text(res);
	       }
	    });
	});

