window.setTimeout(function() {
    $(".alert").fadeTo(200, 0).slideUp(300, function(){
        $(this).remove(); 
    });
}, 2000);


window.setTimeout(function() {
    $(".sign-error-messages").fadeTo(300, 0).slideUp(300, function(){
        $(this).remove(); 
    });
}, 2000);

