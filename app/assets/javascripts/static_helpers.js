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

var cleanUpErrorMessages = function() {
    window.setTimeout(function() {
        $(".field_with_errors label").fadeTo(200, 0).slideUp(200, function(){
            $(this).remove(); 
        });
    }, 4000);
}

window.ClientSideValidations.callbacks.element.fail = function(element, message, callback) {
  callback();
  if (element.data('valid') !== false) {
    cleanUpErrorMessages();
  }
}