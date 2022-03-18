package ucll.be.eindopdracht.domain.model;

public class Bloem {
    private int id , aantal;
    private String naam , kleur;

    public Bloem( String naam, String kleur, int aantal) {
        setId(id);
        setNaam(naam);
        setKleur(kleur);
        setAantal(aantal);

    }

    public void setId(int id) {

    }

    public void setAantal(int aantal) {
        this.aantal = aantal;
    }

    public void setNaam(String naam) {
        if(naam == null || naam.isBlank())throw new IllegalArgumentException("Naam mag niet leeg zijn");
        this.naam = naam;
    }

    public void setKleur(String kleur) {
        if(kleur == null || kleur.isBlank())throw new IllegalArgumentException("kleur mag niet leeg zijn");
        this.kleur = kleur;
    }

    public int getId() {
        return id;
    }

    public int getAantal() {
        return aantal;
    }

    public String getNaam() {
        return naam;
    }

    public String getKleur() {
        return kleur;
    }
}
