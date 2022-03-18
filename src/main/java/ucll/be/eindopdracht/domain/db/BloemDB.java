package ucll.be.eindopdracht.domain.db;

import ucll.be.eindopdracht.domain.model.Bloem;

import java.util.ArrayList;
import java.util.List;

public class BloemDB {
    private int sequence = 0;
    private final List<Bloem> bloemen = new ArrayList<>();

    public BloemDB() {
        this.voegBloemToe(new Bloem("Tulip","Rood",10));
        this.voegBloemToe(new Bloem("Roos","Roze",11));
        this.voegBloemToe(new Bloem("WhiteRosen","White",12));
    }

    public void voegBloemToe(Bloem bloem) {

        bloem.setId(sequence);
        this.sequence++;
        bloemen.add(bloem);

    }




    public void verwijder(Bloem bloem) {

        bloem.setId(sequence);
        bloemen.remove(bloem);

    }


    /**public Bloem find(int id){
     for(Bloem b : bloemen)
     if(b.getId() == id)return b;
     return null;
     }**/

    public Bloem vind(String naam) {
        if (naam == null || naam.isEmpty())
            throw new IllegalArgumentException("Naam mag niet leeg zijn");
        for (Bloem b : bloemen) {
            if (b.getNaam().contains(naam))
                return b;
        }
        return null;
    }

    public List<Bloem> getBloemen() {
        return bloemen;
    }
    public int getSequence(){
        return sequence;
    }

    public void setSequence(int sequence) {
        this.sequence = sequence;
    }

    public void vervangNaam(String naam){
        for(Bloem b : bloemen){
            if(b.getNaam() == naam)throw new IllegalArgumentException("");
            b.getNaam().replace(b.getNaam(),naam);
        }
    }

    public void vervangKleur(String kleur){
        for(Bloem b : bloemen){
            if(b.getKleur() == kleur)throw new IllegalArgumentException("");
            b.getNaam().replace(b.getNaam(),kleur);
        }
    }

    public Bloem getMeesteVerkochtBloem(){
        if(bloemen.size() == 0){return null;}
        Bloem meestVerkochtBloem = bloemen.get(0);
        for (Bloem bloem : bloemen) {
            if (bloem.getAantal() > meestVerkochtBloem.getAantal())
                meestVerkochtBloem = bloem;
        }
        return meestVerkochtBloem;
    }

    public int getAantalBlomen() {
        return getBloemen().size();
    }

}

