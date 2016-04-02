function ValidateEmail(id) {
            debugger;
            var Email = document.getElementById(id).value;
            if (/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(Email)) {
                return (true)
            }
            alert("You have entered an invalid email address!")
            return (false)
        }


        function NumericOnly(e, t) {
            var code = e.which || window.event.keyCode;
            if (code >= 48 && code <= 58)
                return true;
            else {
                alert('Only numeric values are allowed !');
                t.focus();
                return false;
            }
        }

        function isNumberKey(evt) {
            var charCode = (evt.which) ? evt.which : evt.keyCode;
            if (charCode != 46 && charCode > 31
            && (charCode < 48 || charCode > 57))
                return false;

            return true;
        }

        var specialKeys = new Array();
        specialKeys.push(8); //Backspace
        specialKeys.push(9); //Tab
        specialKeys.push(46); //Delete
        specialKeys.push(36); //Home
        specialKeys.push(35); //End
        specialKeys.push(37); //Left
        specialKeys.push(39); //Right
        function IsAlphaNumeric(e) {

            var keyCode = e.keyCode == 0 ? e.charCode : e.keyCode;
            if (((keyCode >= 48 && keyCode <= 57) || (keyCode >= 65 && keyCode <= 90) || (keyCode >= 97 && keyCode <= 122) || (specialKeys.indexOf(e.keyCode) != -1 && e.charCode != e.keyCode))) {
            }
            else {
                alert("Allow only AlphaNumeric Value.");
                return false;
            }
            return true;
        }


        function PFCheckBoxChange() {
            if (document.getElementById('ContentPlaceHolder1_IncludePFCheckbox').checked) {
                document.getElementById('ContentPlaceHolder1_PFPerTextBox').style.display = 'block';
            }
            else {
                document.getElementById('ContentPlaceHolder1_PFPerTextBox').style.display = 'none';
            }
        }

        function ESICCheckBoxChange() {
            if (document.getElementById('ContentPlaceHolder1_IncludeESICCheckBox').checked) {
                document.getElementById('ContentPlaceHolder1_ESICPerTextBox').style.display = 'block';
            }
            else {
                document.getElementById('ContentPlaceHolder1_ESICPerTextBox').style.display = 'none';
            }
        }

        function UserPhotoCheckBoxChange() {
            if (document.getElementById('ContentPlaceHolder1_UploadCheckBox').checked) {
                document.getElementById('ContentPlaceHolder1_UserImageFileUpload').style.display = 'block';
            }
            else {
                document.getElementById('ContentPlaceHolder1_UserImageFileUpload').style.display = 'none';
            }
        }
