package pl.smartdesign.pocztapolska.contoller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import pl.smartdesign.pocztapolska.model.Voivodeship;
import pl.smartdesign.pocztapolska.repository.VoivodeshipRepository;

import java.util.List;

@Controller
public class MainController {

    @Autowired
    VoivodeshipRepository voivodeshipRepository;


    @RequestMapping(value = {"/", "/index"}, method = RequestMethod.GET)
    public String index(Model model) {
        List<Voivodeship> voivodeshipList = voivodeshipRepository.findAll();
        model.addAttribute("voivodeships", voivodeshipList);

        return "index";
    }

}
