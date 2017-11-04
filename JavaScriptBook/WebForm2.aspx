<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="JavaScriptBook.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="_js/jquery.min.js"></script>
    <script>
        $(document).ready(function () {

            $('#userName').after('<span class="error">User name required</span>');
            $('#userName').before('<span class="error">User name required</span>');

            console.log($('#errors').html());
            console.log($('#errors').text());
            $('#errors h2').text('No errors found');

            $('#errors').append('<p>There are four errors in this form</p>');
            $('#errors').prepend('<p>There are four errors in this form</p>');

            $('#Submit1').click(function () {
                var baseFont = $('body').css('font-size');
                baseFont = parseInt(baseFont);
                $('body').css('font-size', baseFont * 1.1);
                return false;
            });

        });//ready
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div id="container">
                <div id="errors">
                    <h2>Errors:</h2>
                </div>
            </div>
            <input type="text" name="userName" id="userName" />
            <br />
            <br />
            <input id="Submit1" type="submit" value="submit" />
        </div>
    </form>
</body>
</html>
