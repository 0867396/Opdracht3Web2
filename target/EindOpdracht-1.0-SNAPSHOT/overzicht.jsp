<%@ page import="ucll.be.eindopdracht.domain.db.BloemDB" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="ucll.be.eindopdracht.domain.model.Bloem" %>
<%




%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Overzicht</title>
    <link href="style.css" rel="stylesheet" type="text/css"><script src="https://kit.fontawesome.com/eca43c78f4.js" crossorigin="anonymous"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.min.js"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="apple-touch-icon" sizes="180x180" href="/apple-touch-icon.png">
    <link rel="icon" type="image/png" sizes="32x32" href="favicon/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="16x16" href="favicon/favicon-16x16.png">
    <link rel="manifest" href="/site.webmanifest">
</head>
<body>
<div class="alles">
    <header>
        <nav class="main-menu">
            <span class="bar-hamburger"><i id="hamburger-icon" class="fas fa-bars"></i></span>
            <div id="logo"><img src="img/flower_icon.png" alt="navIcon"></div>
            <ul>
                <li><a href="index.jsp">Home</a></li>
                <li><a href="voegtoe.jsp">Voeg Toe</a></li>
                <li class="hier"><a href="overzicht.jsp">Overzicht</a></li>

            </ul>
        </nav>
    </header>
    <div class="content">
        <h2>Overzicht</h2>

        <div class="overzichtTable">
            <table>
                <tr>
                    <th>Naam</th>
                    <th>Kleur</th>
                    <th>Aantal</th>
                    <th>Pas aan</th>
                    <th>Verwijder</th>
                </tr>

                <%--    Open for-loop--%>
                <%
                    ArrayList<Bloem> bloem = (ArrayList<Bloem>) request.getAttribute("Bloemen");
                    for (Bloem b : bloem) {


                %>
                <tr>
                    <td><%= b.getNaam() %></td>


                    <td><%=b.getKleur()%></td>


                    <td><%=b.getAantal() %></td>

                    <td>pass aan</td>
                    <td>Verwijder</td>



                </tr>


                <%--    Close for-loop--%>
                <%
                    }
                %>

            </table>
        </div>
    </div>
    <footer>
        <p>BlomenWinkel &copy;</p>
        <div class="socialMedia">
            <p id="followparagraaf">Volg ons</p>
            <a href="https://www.facebook.com/facebookapp" class="socialMedia"><i class="fab fa-facebook-square"></i></a>
            <a href="https://www.instagram.com/" class="socialMedia"><i class="fab fa-instagram"></i></a>
            <a href="https://twitter.com/" class="socialMedia"><i class="fab fa-twitter"></i></a>
            <a href="https://www.snapchat.com/l/nl-nl/" class="socialMedia"><i class="fab fa-snapchat-ghost"></i></a>
        </div>
    </footer>

    <script>
        $(document).ready(function() {
            $('#hamburger-icon').click(function () {
                $(".main-menu ul").stop();
                $(".main-menu ul").slideToggle();
                $('#hamburger-icon').toggleClass("fa-times");
                $('#hamburger-icon').toggleClass("fa-bars");
            });
        });
    </script>
</div>
</body>
</html>