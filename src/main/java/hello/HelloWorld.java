package hello;


import org.apache.commons.lang3.StringUtils;

public class HelloWorld {

    public static void main(String[] args) {
        String trimmed = StringUtils.trim("   hejsan    ");

        System.out.println(trimmed);

    }
}
