function get_sample() {
    $.ajaxSetup({
        headers: {
            "X-CSRF-TOKEN": $('meta[name="csrf-token"]').attr("content")
        }
    });
    $.ajax({
        url: "/admin/any_route",
        type: "POST",
        data: {test_data_key: 'any data'},
        success: function (data) {

        }
    });
}


$(document).ready(function () {
    var i = 0;

    //  load_deafult_rows_contra();

});

function load_deafult_rows() {
    var row_count = 0;
    $('.details.d_amount').each(function (index, val) {
        row_count = index;
    });
    if (row_count < 2) {
        var full_url = window.location.href;
        var n = full_url.includes("create");
        if (n) {
            for (i = 0; i < 2; i++) {
                $('#has-many-details').find('.add').trigger('click');

            }
            button_disable();
        } else {
            console.log(n);
            console.log(full_url);
        }
    }

}


function load_deafult_rows_contra() {
    var row_count = 0;
    $('.details.d_amount').each(function (index, val) {
        row_count = index;
    });
    if (row_count < 3) {
        var full_url = window.location.href;
        var n = full_url.includes("contra_voucher/create");
        if (n) {
            for (i = 0; i < 2; i++) {
                $('#has-many-details').find('.add').trigger('click');
            }
            button_disable2();
        } else {
            console.log(n);
            console.log(full_url);
        }
    }
    button_disable();
}

function getRandomInt(max) {
    return Math.floor(Math.random() * Math.floor(max));
}

function button_disable2() {
    // alert('tet');
    $(".btn-primary").attr("disabled", true);
}

function button_disable() {
    // alert('tet');
    // $(".btn-primary").attr("disabled", true);
}

function button_enable() {
    $(".btn-primary").attr("disabled", false);
}

function calculate_sum_footer_table() {
    button_disable2();
    var d_amount = [];
    var c_amount = [];
    var num = 0;
    var d_sum = 0;
    var c_sum = 0;
    $('.details.d_amount').each(function (index, val) {
        num = convert_number(val.value);
        d_amount[index] = num;
        d_sum = (d_sum + num);
    });
    $('.details.c_amount').each(function (index, val) {
        num = convert_number(val.value);
        c_amount[index] = num;
        c_sum = (c_sum + num);
    });
    /*    console.log(d_amount);
        console.log(c_amount);
        console.log(d_sum);
        console.log(c_sum);*/

    var table = document.getElementsByClassName("has-many-details");
    // console.log(table);
    table = table[0];
    table.deleteTFoot();
    var footer = table.createTFoot('');
    var row = footer.insertRow(0);
    var cell = row.insertCell(0);
    cell.innerHTML = "";
    cell = row.insertCell(1);
    cell.innerHTML = "<b>Total Debit " + d_sum.toFixed(2) + "</b>";
    cell = row.insertCell(2);
    cell.innerHTML = "<b>Total Credit " + c_sum.toFixed(2) + "</b>";
    button_disable2();
    if (c_sum == d_sum) {
        button_enable();
    }
}

function convert_number(number) {
    var newPrice = number.replace(/[^0-9\.]/g, '');
    var decimalPoints = newPrice.match(/\./g);
    var final_value = newPrice;
    if (decimalPoints && decimalPoints.length > 1) {
        var res = newPrice.split(".");
        final_value = res[0] + '.' + res[1];
    }
    if (final_value == "") {
        final_value = "0";
    }
    return parseFloat(final_value);
}

function number_validation_for_input(number) {
    var n = number.value;
    var newPrice = n.replace(/[^0-9\.]/g, '');
    var decimalPoints = newPrice.match(/\./g);
    var final_value = newPrice;
    if (decimalPoints && decimalPoints.length > 1) {
        var res = newPrice.split(".");
        final_value = res[0] + '.' + res[1];
    }
    number.value = final_value;
    var name_data = number.name.toString();
    var d_amount = name_data.includes("d_amount");
    var replace_name = "";
    if (d_amount) {
        replace_name = name_data.replace("d_amount", "c_amount");
    } else {
        replace_name = name_data.replace("c_amount", "d_amount");
    }
    final_value = convert_number(final_value);

    if (final_value > 0) {
        $('[name="' + replace_name + '"]').attr('readonly', true);
    } else {
        $('[name="' + replace_name + '"]').attr('readonly', false);
    }
}

function cash_in_hand_for_debit(e) {
    console.log(e);
    var select_value = e.options[e.selectedIndex].text.toString();
    var cash_in_hand = select_value.search("CASH IN HAND");
    console.log(cash_in_hand);
    if (cash_in_hand >= 0) {
        var name_data = e.name.toString();
        var d_amount = name_data.includes("chart_of_accounts_id");
        var replace_name = "";
        if (d_amount) {
            replace_name = name_data.replace("chart_of_accounts_id", "c_amount");
        }
        $('[name="' + replace_name + '"]').attr('readonly', true);
    }
}

function cash_in_hand_for_credit(e) {
    console.log(e);
    var select_value = e.options[e.selectedIndex].text.toString();
    var cash_in_hand = select_value.search("CASH IN HAND");
    console.log(cash_in_hand);
    if (cash_in_hand >= 0) {
        var name_data = e.name.toString();
        var d_amount = name_data.includes("chart_of_accounts_id");
        var replace_name = "";
        if (d_amount) {
            replace_name = name_data.replace("chart_of_accounts_id", "d_amount");
        }
        $('[name="' + replace_name + '"]').attr('readonly', true);
    }
}
function cash_at_bank_for_credit(e) {
    console.log(e);
    var select_value = e.options[e.selectedIndex].text.toString();
    var cash_in_hand = select_value.search("CASH AT BANK");
    console.log(cash_in_hand);
    if (cash_in_hand >= 0) {
        var name_data = e.name.toString();
        var d_amount = name_data.includes("chart_of_accounts_id");
        var replace_name = "";
        if (d_amount) {
            replace_name = name_data.replace("chart_of_accounts_id", "d_amount");
        }
        $('[name="' + replace_name + '"]').attr('readonly', true);
    }
}
function cash_at_bank_for_debit(e) {
    console.log(e);
    var select_value = e.options[e.selectedIndex].text.toString();
    var cash_in_hand = select_value.search("CASH AT BANK");
    console.log(cash_in_hand);
    if (cash_in_hand >= 0) {
        var name_data = e.name.toString();
        var d_amount = name_data.includes("chart_of_accounts_id");
        var replace_name = "";
        if (d_amount) {
            replace_name = name_data.replace("chart_of_accounts_id", "c_amount");
        }
        $('[name="' + replace_name + '"]').attr('readonly', true);
    }
}
