<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="JavaScriptBook.chapter07.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="../_js/jquery.min.js"></script>
    <script>
        var newWin;
       
        $(document).ready(function () {
            $('#Submit1').click(function () {
                var winProps = 'width=200,height=200,location=no,toolbar=no,left=600';
                newWin = open("http://www.asriran.com", "ali",winProps);
                return false;
            });//end click

            $('#Submit2').click(function (evt) {
                evt.preventDefault();
                newWin.resizeTo(400, 400);
                newWin.close();
               
            });//end click
        }); // end ready
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <input id="Submit1" type="submit" value="create window" />
            <input id="Submit2" type="submit" value="resize window" />
            <div id="targetPage">
            </div>
        </div>
    </form>
</body>
</html>
