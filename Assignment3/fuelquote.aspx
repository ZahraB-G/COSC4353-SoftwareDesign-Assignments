<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <title>Fuel Quote History</title>
    <link rel ="stylesheet" href="fuelquote.css"/>
</head>


<body onload="Load()">

    <h1>Fuel Quote Request</h1>
    <form runat="server">
        <p runat="server">Gallon Request: </p>
        <input runat="server" type="number" id=gallon min="0" step="any" placeholder="Input Gallons" name="" required>

        <p>Delivery Address: </p>
        <p id="address1" name="address1" rows="2" cols="20" runat ="server"> </p>
        <p id="address2" name="address2" rows="2" cols="20"runat ="server"> </p>
        <p id="city" name="city" rows="2" cols="20"runat ="server"> </p>
        <p id="state" name="state" rows="2" cols="20" runat ="server"> </p>
        <p id="zip" name="zip" rows="2" cols="20" runat ="server"> </p>

        <p>Delivery Date: </p>
        <input type="date" id=dated placeholder ="Input Date" name="" required runat ="server">

        <p>Suggested Price Per Gallon: </p>
        <p runat ="server" id="PPG" name="PPG" rows="2" cols="20">$2.25</p>
        <!-- <input type="number" min="0" step="any" placeholder="Input Price" name="" required>-->

        <input runat ="server" type="button" name="" value="Update" onclick="update_price()"><br> 
        <p>Total Amount: </p>
        <p runat ="server" id="Total" name="Total" rows="2" cols="20"></p>

        <!--  <input type="number" min="0" step="any" placeholder="Amount Due" name="" required>-->

        <br><br><br>

        <input type="submit" name="" value="Request" onclick="update()"><br> <br>

    </form>

    <script>
         function Load(){
            if(sessionStorage.getItem("address1") == null)
                return;
            document.getElementById("address1").innerHTML = sessionStorage.getItem("address1") + ", ";
            document.getElementById("address2").innerHTML = sessionStorage.getItem("address2")+ ", ";
            document.getElementById("city").innerHTML = sessionStorage.getItem("city")+ ", ";
            document.getElementById("state").innerHTML = sessionStorage.getItem("state")+ " ";
            document.getElementById("zip").innerHTML = sessionStorage.getItem("zip");
        }
        
        function update_price()
        {
            var cost = document.getElementById("gallon").value * 2.25;
            document.getElementById("Total").innerHTML = "$ " + cost.toString();
        }

    </script>
</body>


</html>



