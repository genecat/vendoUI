function readURL(input) {
    if (input.files && input.files[0]) {

        var reader = new FileReader();

        reader.onload = function (e) {
            $('.image-upload-wrap').hide();

            $('.file-upload-image').attr('src', e.target.result);
            $('.file-upload-content').show();

            $('.image-title').html(input.files[0].name);
        };

        reader.readAsDataURL(input.files[0]);

    } else {
        removeUpload('file');
    }
}
function readURL2(input, img, content, wrap) {
    if (input.files && input.files[0]) {
        var reader = new FileReader();

        reader.onload = function (e) {
            $('#' + wrap).hide();

            $('#' + img).attr('src', e.target.result);
            $('#' + content).show();

        };
        reader.readAsDataURL(input.files[0]);

    } else {
        removeUpload2();
    }
}

function removeUpload(input) {
    //$('.file-upload-input').replaceWith($('.file-upload-input').clone());
    document.getElementById(input).value = "";

    $('.file-upload-content').hide();
    $('.image-upload-wrap').show();
}

function removeUpload2(input, content, wrap) {
    //$('.file-upload-input').replaceWith($('.file-upload-input').clone());
    document.getElementById(input).value = "";
    $('#' + content).hide();
    $('#' + wrap).show();
}

$('.image-upload-wrap').bind('dragover', function () {
    $('.image-upload-wrap').addClass('image-dropping');
});
$('.image-upload-wrap').bind('dragleave', function () {
    $('.image-upload-wrap').removeClass('image-dropping');
});




$('.datepicker').datepicker();
$('.input-daterange input').each(function () {
    $(this).datepicker('clearDates');
});


function closeOnClickDemo() {
    datepicker.unselectAll();
    datepicker.closeOnClick = false;
    datepicker.button = 'Close';
    datepicker.onSelect = function (checked) {
        document.getElementById("datedemo").value = this.toLocaleDateString();
    };
    datepicker.onClose = function () {
        datepicker.closeOnClick = true;
        datepicker.button = null;
        datepicker.onClose = null;
    }
    datepicker.show();
}

function dateselect2() {
    datepicker.unselectAll();
    datepicker.closeOnClick = false;
    datepicker.button = 'Close';
    datepicker.onSelect = function (checked) {
        document.getElementById("dateinput2").value = this.toLocaleDateString();
    };
    datepicker.onClose = function () {
        datepicker.closeOnClick = true;
        datepicker.button = null;
        datepicker.onClose = null;
    }
    datepicker.show();
}



