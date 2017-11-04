<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="JavaScriptBook.chapter06.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="../_js/jquery.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $('#hide').click(function () {
                $('p').hide();
                return false;
            });//end hide

            $('#show').click(function () {
                $('p').show();
                return false;
            });//end show

            $('#fadeto').click(function () {
                $('p').fadeTo(1000, 0.5);
                return false;
            });//end fadeto
        });//end ready
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <input id="hide" type="submit" value="submit" />
        <br />
        <input id="show" type="submit" value="submit" />
        <br />
        <input id="fadeto" type="submit" value="submit" />
    <p>this is a test</p>
    </div>
    </form>
</body>
</html>
