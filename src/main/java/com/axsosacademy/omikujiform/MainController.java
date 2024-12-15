package com.axsosacademy.omikujiform;

import jakarta.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/omikuji")
public class MainController {
    @RequestMapping(value = "", method = RequestMethod.GET)
    public String omikuji() {
        return "omikuji.jsp";
    }
    @RequestMapping(value = "/show", method = RequestMethod.GET)
    public String show(
            @RequestParam("num") int num,
            @RequestParam("city") String city,
            @RequestParam("name") String name,
            @RequestParam("hobby") String hobby,
            @RequestParam("thing") String thing,
            @RequestParam("comment") String comment,
            HttpSession session
    ) {
        session.setAttribute("num", num);
        session.setAttribute("city", city);
        session.setAttribute("name", name);
        session.setAttribute("hobby", hobby);
        session.setAttribute("thing", thing);
        session.setAttribute("comment", comment);
        System.out.println(num + " " + city + " " + name + " " + hobby + " " + thing + " " + comment);
        return "show.jsp";
    }
}
