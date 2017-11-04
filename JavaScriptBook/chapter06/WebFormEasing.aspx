<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebFormEasing.aspx.cs" Inherits="JavaScriptBook.chapter06.WebFormEasing" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="../_js/jquery.min.js"></script>
    <script src="../_js/jquery-ui.min.js"></script>
    <script>
        $(document).ready(function () {
            $('#animate').click(function () {
                $(this).animate(
                    {
                        width: '400px',
                        height: '400px'
                    },
                    1000,
                    'easeInBounce'); // end animate
            }); // end click
        }); // end ready
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div id="animate" style="border-style:double">
                <p>this is a test</p>
                <p>another test</p>
            </div>
        </div>
    </form>
</body>
</html>


