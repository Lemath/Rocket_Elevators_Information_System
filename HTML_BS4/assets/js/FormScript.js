
$(document).ready(function(){
    $("#residential").click(function(){
        $("#input-fields").show();
        $(".commercial").hide();
        $(".corporate").hide();
        $(".hybrid").hide();
        $(".residential").show();
    })

    $("#commercial").click(function(){
        $("#input-fields").show();
        $(".residential").hide();
        $(".corporate").hide();
        $(".hybrid").hide();
        $(".commercial").show();
    })

    $("#corporate").click(function(){
        $("#input-fields").show();
        $(".residential").hide();
        $(".commercial").hide();
        $(".hybrid").hide();
        $(".corporate").show();
    })

    $("#hybrid").click(function(){
        $("#input-fields").show();
        $(".residential").hide();
        $(".commercial").hide();
        $(".corporate").hide();
        $(".hybrid").show();
    });

// Quote  Calculator Section

    var numelevators = 0;
    var totalelevators = 0;
    var fees = 0;
    var final =0;

    let standard = 7565;
    let premium = 12345;
    let excelium = 15400;



    $("#quote").on("change",function(){
        if($("#residential").is(":checked")) {
            var f = Math.ceil($("#num-appt").val())
            var g = Math.ceil($("#num-floors").val())
            var h = (f/g)/6;
            isNaN(numelevators = Math.ceil(h));{numelevators = 0};
            console.log(numelevators)}
            

        else if($("#commercial").is(":checked")){
            numelevators = Math.ceil($("#num-cages").val())
            console.log(numelevators)}

        else if($(".corporate-hybrid").is(":checked")){
            var a = Math.ceil($("#num-floors").val())
            var b = Math.ceil($("#num-bsmt").val())
            var totalfloors = a + b;
            var c = Math.ceil($("#num-occupants").val())
            var d = 0;
            var totaloccupants = totalfloors*c;
            numelevators = Math.ceil(totaloccupants/1000)
            console.log(numelevators)}

            if($("#standard-btn").is(":checked")){
                totalelevators = numelevators*standard;

                fees = (totalelevators/100)*10
                final = totalelevators+fees}
            
            else if($("#premium-btn").is(":checked")){
                totalelevators = numelevators*premium;

                fees = (totalelevators/100)*10
                final = totalelevators+fees}

            else if($("#excelium-btn").is(":checked")){
                totalelevators = numelevators*excelium;

                fees = (totalelevators/100)*10
                final = totalelevators+fees}         

        return $("#ele-num").text(Math.ceil(numelevators)),$("#ele-total").text(Math.ceil(totalelevators)),$("#total-fees").text(Math.ceil(fees)),$("#final-price").text(Math.ceil(final))})
    
    })
