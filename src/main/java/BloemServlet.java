import ucll.be.eindopdracht.domain.db.BloemDB;
import ucll.be.eindopdracht.domain.model.Bloem;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "BloemServlet", value = "/BloemServlet")
public class BloemServlet extends HttpServlet {
    private BloemDB bloemDB = new BloemDB();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("Bloemen", bloemDB.getBloemen());
        RequestDispatcher view = request.getRequestDispatcher("overzicht.jsp");
        view.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String naam = request.getParameter("fname");
        String kleur = request.getParameter("fcolor");
        int aantal = Integer.parseInt(request.getParameter("flower"));

        Bloem bloem = new Bloem(naam, kleur, aantal);
        request.setAttribute("Bloemen", bloemDB.getBloemen());
        bloemDB.voegBloemToe(bloem);
        RequestDispatcher view = request.getRequestDispatcher("overzicht.jsp");
        view.forward(request, response);
    }
}
