package controller;

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
        return mv;
    }
}

