
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
            var elevatorspercolumn = Math.ceil((f/g)/6)
            var numberofcolumns = Math.ceil(g/20)
            var i = elevatorspercolumn*numberofcolumns
            if(isNaN(numelevators = i)){numelevators=0};
            console.log(numelevators)}
            

        else if($("#commercial").is(":checked")){
            numelevators = Math.ceil($("#num-cages").val())
            if(isNaN(totalelevators)){totalelevators=0};
            console.log(numelevators)}

        else if($(".corporate-hybrid").is(":checked")){
            var a = Math.ceil($("#num-floors").val())
            var b = Math.ceil($("#num-bsmt").val())
            var c = Math.ceil($("#num-occupants").val())
            var totalfloors = a + b;
            var totaloccupants = totalfloors*c;
            var elevatorsrequired = Math.ceil(totaloccupants/1000)
            var numberofcolumns = Math.ceil(totalfloors/20)
            var elevatorspercolumn = Math.ceil(elevatorsrequired/numberofcolumns)
            numelevators = elevatorspercolumn*numberofcolumns
            if(isNaN(numelevators)){numelevators=0};
            if(isNaN(totalelevators)){totalelevators=0};
            if(isNaN(fees)){fees=0};
            if(isNaN(final)){final=0};
            console.log(numelevators)}

            if($("#standard-btn").is(":checked")){
                totalelevators = numelevators*standard;
                fees = (totalelevators/100)*10
                final = totalelevators+fees}
            
            else if($("#premium-btn").is(":checked")){
                totalelevators = numelevators*premium;
                fees = (totalelevators/100)*13
                final = totalelevators+fees}

            else if($("#excelium-btn").is(":checked")){
                totalelevators = numelevators*excelium;
                fees = (totalelevators/100)*16
                final = totalelevators+fees}         

        return $("#ele-num").text(Math.ceil(numelevators)),$("#ele-total").text(Math.ceil(totalelevators)),$("#total-fees").text(Math.ceil(fees)),$("#final-price").text(Math.ceil(final))})
    
    })
