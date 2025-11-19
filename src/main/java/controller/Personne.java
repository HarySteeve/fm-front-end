package controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import annotations.AnnotationClass;
import annotations.UrlMapping;
import util.http.ModelAndView;

@AnnotationClass
public class Personne {

    @UrlMapping("/home")
    public String home() {
        return "ZAY FA METY EE!!";
    }

    @UrlMapping("/about")
    public ModelAndView about() {
        ModelAndView mv = new ModelAndView("/pages/view1.jsp");
    
        // Une liste d'exemple
        List<String> fruits = List.of("Pomme", "Banane", "Mangue", "Ananas");
    
        // Ajouter dans le data
        Map<String, Object> data = new HashMap<>();
        data.put("fruits", fruits);
    
        mv.setData(data);
        return mv;
    }

}

