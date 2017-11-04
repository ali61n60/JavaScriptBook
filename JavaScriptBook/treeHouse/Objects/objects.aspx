<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="objects.aspx.cs" Inherits="JavaScriptBook.treeHouse.Objects.objects" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="../../_js/jquery.min.js"></script>
    <script>
        $(document).ready(function () {
            var person = {
                name: 'Sarah',
                country: 'US',
                age: 35,
                treehouseStudent: true,
                skills: ['JavaScript', 'HTML', 'CSS']
            };

            function printPerson(element) {
                var html = "<ul>";
                html += "<li>Name: " + element.name + "</li>";
                html += "<li>Country: " + element.country + "</li>";
                html += "<li>Age: " + element.age + "</li>";
                html += "<li>Skills: " + element.skills.join(', ') + "</li>";

                html += "</ul>";
                return html;
            }

            var mainDiv = document.getElementById('mainDiv');
            mainDiv.innerHTML = printPerson(person);
        });


    </script>

</head>

<body>
    <form id="form1" runat="server">
        <div id="mainDiv">
        </div>
    </form>
</body>
</html>
