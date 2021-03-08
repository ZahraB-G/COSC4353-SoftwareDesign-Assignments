<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="description" content="Client Profile Management">
  <meta name="keywords" content="HTML, CSS, JavaScript">
  <meta name="author" content="Ahmed, Eunsung, Zahra">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="client_management.css" />
  <title>Client Profile Management</title>
</head>


<body onload=showAlert()>

    <header>
        <h1>Client Profile Management</h1>
    </header>  
  
    <div class="display">

      <label for="text"><b>First Name</b></label>
      <p id="fName" name="fName" rows="2" cols="20"></p>

      <label for="text"><b>Last Name</b></label>
      <p id="lName" name="lName" rows="2" cols="20"> </p>

      <label for="text"><b>Address1</b></label>
      <p id="add1" name="add1" rows="2" cols="20"> </p>

      <label for="text"><b>Address2<i> - OPTIONAL</i></b></label>
      <p id="add2" name="add2" rows="2" cols="20"> </p>

      <label for="text"><b>City</b></label>
      <p id="ci" name="ci" rows="2" cols="20"> </p>

      <label for="drop-down"><b>State</b></label>
      <p id="st" name="st" rows="2" cols="20"> </p>

      <label for="text"><b>Zip Code</b></label>
      <p id="zi" name="zi" rows="2" cols="20"> </p>
    </div>

    <form action="fuelquote.html">
        <input id="quote" type="submit" value="FUEL QUOTE REQUEST" />
    </form>
  
  <button class="open-button" onclick="openForm()">Update Profile Information</button>
  <div class="form-popup" id="clientForm">
    <div class="form-container">
      <h1>Client Profile Registration</h1>
      
      <label for="text"><b>First Name</b></label>
      <input type="text" placeholder="Enter First Name" id="firstName" name="firstName" maxlength="50" required>

      <label for="text"><b>Last Name</b></label>
      <input type="text" placeholder="Enter Last Name" id="lastName" name="lastName" maxlength="50" required>

      <label for="text"><b>Address1</b></label>
      <input type="text" placeholder="Enter Address" id="address1" name="address1" maxlength="100" required>

      <label for="text"><b>Address2<i> - OPTIONAL</i></b></label>
      <input type="text" placeholder="Apartment, Floor, Suite, Bldg #" id="address2" name="address2" maxlength="100">

      <label for="text"><b>City</b></label>
      <input type="text" placeholder="City" id="city" name="city" maxlength="100" required>

      <label for="drop-down"><b>State</b></label>
      <br>
      <select name="state" id="state">
        <option value="AL">Alabama (AL)</option>
        <option value="AK">Alaska (AK)</option>
        <option value="AZ">Arizona (AZ)</option>
        <option value="AR">Arkansas (AR)</option>
        <option value="CA">California (CA)</option>
        <option value="CO">Colorado (CO)</option>
        <option value="CT">Connecticut (CT)</option>
        <option value="DE">Delaware (DE)</option>
        <option value="DC">District Of Columbia (DC)</option>
        <option value="FL">Florida (FL)</option>
        <option value="GA">Georgia (GA)</option>
        <option value="HI">Hawaii (HI)</option>
        <option value="ID">Idaho (ID)</option>
        <option value="IL">Illinois (IL)</option>
        <option value="IN">Indiana (IN)</option>
        <option value="IA">Iowa (IA)</option>
        <option value="KS">Kansas (KS)</option>
        <option value="KY">Kentucky (KY)</option>
        <option value="LA">Louisiana (LA)</option>
        <option value="ME">Maine (ME)</option>
        <option value="MD">Maryland (MD)</option>
        <option value="MA">Massachusetts (MA)</option>
        <option value="MI">Michigan (MI)</option>
        <option value="MN">Minnesota (MN)</option>
        <option value="MS">Mississippi (MS)</option>
        <option value="MO">Missouri (MO)</option>
        <option value="MT">Montana (MT)</option>
        <option value="NE">Nebraska (NE)</option>
        <option value="NV">Nevada (NV)</option>
        <option value="NH">New Hampshire (NH)</option>
        <option value="NJ">New Jersey (NJ)</option>
        <option value="NM">New Mexico (NM)</option>
        <option value="NY">New York (NY)</option>
        <option value="NC">North Carolina (NC)</option>
        <option value="ND">North Dakota (ND)</option>
        <option value="OH">Ohio (OH)</option>
        <option value="OK">Oklahoma (OK)</option>
        <option value="OR">Oregon (OR)</option>
        <option value="PA">Pennsylvania (PA)</option>
        <option value="RI">Rhode Island (RI)</option>
        <option value="SC">South Carolina (SC)</option>
        <option value="SD">South Dakota (SD)</option>
        <option value="TN">Tennessee (TN)</option>
        <option value="TX">Texas (TX)</option>
        <option value="UT">Utah (UT)</option>
        <option value="VT">Vermont</option>
        <option value="VA">Virginia</option>
        <option value="WA">Washington</option>
        <option value="WV">West Virginia</option>
        <option value="WI">Wisconsin</option>
        <option value="WY">Wyoming</option>
      </select>			
      <br><br>

      <label for="text"><b>Zip Code</b></label>
      <input type="text" placeholder="5 digit or 9 digit ZIP Code" id="zip" name="zip" minlength="5" maxlength="9" required>

      <button type="submit" class="btn" onclick="update()">Save</button>
      <button type="button" class="btn cancel" onclick="closeForm()">Close</button>
    </div>
  </div>

  <script>
  
   class Client
  {
      constructor(name, address) {
      this.firstName = name.FirstName;
      this.lastnNme = name.LastName;
      this.address1 = address.address1;
      this.address2 = address.address2;
      this.state = address.state;
      this.city = address.city;
      this.zip = address.zip;
      }
  }
  
  function openForm() {
    document.getElementById("clientForm").style.display = "block";
  }
  
  function closeForm() {
    document.getElementById("clientForm").style.display = "none";
  }

  function update() {
    
        var name = {
        firstName:  document.getElementById("firstName").value,
        lastName: document.getElementById("lastName").value
        };

        var address = {
        address1:  document.getElementById("address1").value,
        address2: document.getElementById("address2").value,
        state: document.getElementById("state").value,
        city: document.getElementById("city").value,
        zip: document.getElementById("zip").value
        };

        let client = new Client(name,address);

        check_text_input("fName", "firstName");
        check_text_input("lName", "lastName");
        check_text_input("ci", "city");
        check_text_input("st", "state");


        sessionStorage.setItem("address1", client.address1);
       sessionStorage.setItem("address2", client.address2);
        sessionStorage.setItem("city", client.city);
        sessionStorage.setItem("state", client.state);
        sessionStorage.setItem("zip", client.zip);


        document.getElementById("add1").innerHTML = client.address1;
        document.getElementById("add2").innerHTML = client.address2;
        document.getElementById("zi").innerHTML = client.zip;


        document.getElementById("clientForm").style.display = "none";
   }

  function check_text_input(s1, s2)
  {
    if(hasNumber(document.getElementById(s2).value))
    {
      alert ("Alphabets accepted only");
    }
    else
      document.getElementById(s1).innerHTML = document.getElementById(s2).value;
  }


  function hasNumber(myString) {
    return /\d/.test(myString);
  }

  function showAlert() {
      if(document.getElementById("fName").value == undefined)
      {
        alert ("Welcome! Please Register for your Account");
        document.getElementById("clientForm").style.display = "block";
      }
      else
          alert ("Welcome!" + document.getElementById("fName").value );
  }
  </script>
</body>

</html>

