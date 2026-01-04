package controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import annotations.AnnotationClass;
import annotations.Get;
import annotations.Param;
import annotations.PathVariable;
import annotations.Post;
import annotations.UrlMapping;
import util.http.ModelAndView;

@AnnotationClass
public class Personne {

    @UrlMapping("/home")
    public String home() {
        return "ZAY FA METY EE!!";
    }

    @Get("/about")
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

    @Post("/about")
    public String aboutPost(@Param("message") String message) {
        return "Vous avez envoye le message: " + message;
    }

    @Post("/test-map")
    public String testMap(Map<String, Object[]> params) {
        StringBuilder sb = new StringBuilder("PARAMS RECUS:\n");

        for (Map.Entry<String, Object[]> entry : params.entrySet()) {
            sb.append(entry.getKey())
            .append(" = ");

            Object[] values = entry.getValue();
            for (Object v : values) {
                sb.append(v).append(" ");
            }
            sb.append("\n");
        }

        return sb.toString();
    }

    @Post("/test-mix/{id}")
    public String testMix(
        @PathVariable int id,
        @Param("name") String name,
        Map<String, Object[]> params
    ) {
        return "id=" + id + ", name=" + name + ", totalParams=" + params.size();
    }

    @UrlMapping("/misy/{id}")
    public String get(@PathVariable Integer id, @Param("name") String anarana) {
        return "Name: "+anarana+", age: "+id;
    }
}

