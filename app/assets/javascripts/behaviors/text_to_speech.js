$(function() {
    $(data_behavior('text_to_speech')).click(function(e) {
        var url = 'http://translate.google.com/translate_tts?ie=UTF-8&tl=ko&q=' + encodeURIComponent($(this).data('text-to-speech'));
        (new Audio(url)).play();
    });
});