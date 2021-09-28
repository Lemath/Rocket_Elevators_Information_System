
$(document).ready(function(){
    $("#residential").click(function(){
        $("#input-fields").show();
        $(".commercial").hide();
        $(".corporate").hide();
        $(".hybrid").hide();
        $(".residential").show();

    });
});

$(document).ready(function(){
    $("#commercial").click(function(){
        $("#input-fields").show();
        $(".residential").hide();
        $(".corporate").hide();
        $(".hybrid").hide();
        $(".commercial").show();
    });
});

$(document).ready(function(){
    $("#corporate").click(function(){
        $("#input-fields").show();
        $(".residential").hide();
        $(".commercial").hide();
        $(".hybrid").hide();
        $(".corporate").show();
    });
});

$(document).ready(function(){
    $("#hybrid").click(function(){
        $("#input-fields").show();
        $(".residential").hide();
        $(".commercial").hide();
        $(".corporate").hide();
        $(".hybrid").show();
    });
});

// Quote  Calculator Section

$(document).ready(function(){
    var totalelevators = 0;
    let standard = 7565;
    let premium = 12345;
    let excelium = 15400;



    $("#quote").on("change",function(){
        if($("#residential").is(":checked")) {
            totalelevators =($("#num-appt").val()/$("#num-floors").val()/6)}

        else if($("#commercial").is(":checked")) {
            totalelevators =($("#num-cages").val())}

    //    else($("corporate").is(":checked")){
    //        totalelevators =($("#num-occupants").val()/($("#num-floors").val()+$("#num-bsmt").val())
    //        )}
        



        $("#ele-total").text(Math.ceil(totalelevators))
    })
})