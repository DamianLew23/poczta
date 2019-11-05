package pl.smartdesign.pocztapolska.contoller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import pl.smartdesign.pocztapolska.model.County;
import pl.smartdesign.pocztapolska.model.Voivodeship;
import pl.smartdesign.pocztapolska.repository.CountyRepository;
import pl.smartdesign.pocztapolska.repository.DaysRepository;
import pl.smartdesign.pocztapolska.repository.PostOfficeRepository;
import pl.smartdesign.pocztapolska.repository.VoivodeshipRepository;

import java.time.DayOfWeek;
import java.time.LocalDate;

@Controller
public class CountyController {

    @Autowired
    private VoivodeshipRepository voivodeshipRepository;
    @Autowired
    private CountyRepository countyRepository;
    @Autowired
    private PostOfficeRepository postOfficeRepository;
    @Autowired
    private DaysRepository daysRepository;

    @RequestMapping(value = {"/w-{voivodeshipUrl}/p-{countyUrl}"}, method = RequestMethod.GET)
    public String postOfficesInCountyList(
            Model model,
            @PathVariable("voivodeshipUrl") String voivodeshipUrl,
            @PathVariable("countyUrl") String countyUrl) {

        Voivodeship voivodeship = voivodeshipRepository.findFirstByNameUrl(voivodeshipUrl);
        County county = countyRepository.findFirstByNameUrl(countyUrl);


        LocalDate localDate = LocalDate.now();
        DayOfWeek today = localDate.getDayOfWeek();
        String todayNamePl = daysRepository.findFirstById((long) today.getValue()).getName();


        model.addAttribute("todayNamePl", todayNamePl);
        model.addAttribute("voivodeship", voivodeship);
        model.addAttribute("county", county);


        return "county";
    }
}
