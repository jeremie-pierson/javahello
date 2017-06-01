import java.util.Map;

public class HelloWorld {
    public static void main(String[] args) {
        Map<String, String> env = System.getenv();
        System.out.format("Hello, automated v1.3 %s!%n", env.get("HELLO"));
    }
}
