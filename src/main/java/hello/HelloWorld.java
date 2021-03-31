package hello;


import org.apache.commons.lang3.StringUtils;

import java.util.Scanner;

public class HelloWorld {

    public static void main(String[] args) {

        String trimmed = StringUtils.trim("   hejsan    ");

        System.out.println(trimmed);

    }
}
