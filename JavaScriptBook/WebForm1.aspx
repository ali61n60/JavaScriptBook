<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="JavaScriptBook.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="_js/jquery.min.js"></script>
    <script>
        $(document).ready(function () {
            sayHello($('#userName').val());
        });
        function sayHello(name)
        {
            var message='hello '+name;
            alert(message);
        }
        
        var numOfShoes = '2';
        var numOfSocks = 4;
        var totalItems = Number(numOfShoes) + numOfSocks;
        console.log(totalItems);

        function printToday() {
            var today = new Date();
            console.log(today.toDateString());
        }

        printToday();
   
        
        
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>        
        <input id="userName" type="hidden" runat="server" />
    </div>
    </form>
</body>
</html>
