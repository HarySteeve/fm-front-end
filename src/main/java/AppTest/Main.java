package AppTest;

import java.lang.reflect.Method;
import annotations.UrlMapping;

public class Main {

    @UrlMapping("/home")
    public void home() {}

    @UrlMapping("/about")
    public void about() {}

    @UrlMapping("/contact")
    public void contact() {}

    public void notAnnotated() {}

    public static void main(String[] args) {
        Class<?> clazz = Main.class;

        for (Method method : clazz.getDeclaredMethods()) {

            // Vérifie si la méthode est annotée avec @UrlMapping
            if (method.isAnnotationPresent(UrlMapping.class)) {
                UrlMapping mapping = method.getAnnotation(UrlMapping.class);

                // Affiche le nom de la méthode et la valeur de l'annotation
                System.out.println(
                    "URL: " + mapping.value()
                );
            }
        }
    }
}
