$(document).on('turbolinks:load', function () {
    // when a post is clicked, show its full content in a modal window
    $("body").on("click", ".single-sin-card, .single-sin-list", function () {
        // var sined_by = $(this).find('.sin-content .sined-by').html();
        var sin_heading = $(this).find('.sin-content h3').html();
        var sin_content = $(this).find('.sin-content p').html();
        var interested = $(this).find('.sin-content .interested').attr('href');
        // $('.modal-header .sined-by').text(posted_by);
        $('.loaded-data h3').text(sin_heading);
        $('.loaded-data p').text(sin_content);
        $('.loaded-data .interested a').attr('href', interested);
        $('.myModal').modal('show');
    });
});