import org.finance.Grupo
import org.finance.Purok

class BootStrap {

    def init = { servletContext ->
        for(int a = 1; a<=43; a++) {
            Purok purok = new Purok(purok: a.toString()).save(flush: true);
        }
    }
    def destroy = {
    }
}
