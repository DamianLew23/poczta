package pl.smartdesign.pocztapolska.contoller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import pl.smartdesign.pocztapolska.model.PostOffice;
import pl.smartdesign.pocztapolska.repository.DaysRepository;
import pl.smartdesign.pocztapolska.repository.PostOfficeRepository;

import java.time.DayOfWeek;
import java.time.LocalDate;

@Controller
public class PostOfficeController {

    @Autowired
    private PostOfficeRepository postOfficeRepository;
    @Autowired
    private DaysRepository daysRepository;


    @RequestMapping(value = {"/{postOfficeUrl}"}, method = RequestMethod.GET)
    public String postOfficePage(
            Model model,
            @PathVariable("postOfficeUrl") String postOfficeUrl) {

        PostOffice postOffice = postOfficeRepository.findFirstByUrl(postOfficeUrl);

        LocalDate localDate = LocalDate.now();
        DayOfWeek today = localDate.getDayOfWeek();
        String todayNamePl = daysRepository.findFirstById((long) today.getValue()).getName();


        model.addAttribute("todayNamePl", todayNamePl);
        model.addAttribute("postOffice", postOffice);

        return "postoffice";
    }
}
