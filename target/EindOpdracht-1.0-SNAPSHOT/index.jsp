<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Home</title>
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
                <li class="hier"><a href="index.jsp">Home</a></li>
                <li><a href="voegtoe.jsp">Voeg Toe</a></li>
                <li><a href="BloemServlet">Overzicht</a></li>

            </ul>
        </nav>
    </header>
    <div class="content">
        <article class="beschrijving">
            <h2>Home</h2>
            <span>Ontdek onze bloemen. Hoe noemen ze. Wat zijn hun kleuren?
        We schrijven hier alles over onze bloemen.</span><br>
            <span>De bestverkochte bloem is</span><br>
            <span>Samen met onze kwekers kan u de beste bloemen uit het seizoen selecteren.</span>
            <span>Bloemen waar mens én natuur blij van worden: daar zetten we ons voor in.</span>
            <p>Wij kopen onze producten bij onze lokale Belgische partners om  topkwaliteit te verzekeren.
                Alle bloemen en planten worden met zorg gekweekt en zorgvuldig gearrangeerd door gepassioneerde stylisten en bloemisten.
            </p>
        </article>
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