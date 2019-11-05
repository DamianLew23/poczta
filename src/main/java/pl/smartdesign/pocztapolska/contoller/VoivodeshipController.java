package pl.smartdesign.pocztapolska.contoller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import pl.smartdesign.pocztapolska.model.*;
import pl.smartdesign.pocztapolska.repository.CountyRepository;
import pl.smartdesign.pocztapolska.repository.DaysRepository;
import pl.smartdesign.pocztapolska.repository.PostOfficeRepository;
import pl.smartdesign.pocztapolska.repository.VoivodeshipRepository;
import pl.smartdesign.pocztapolska.service.OpenHoursChecker;

import java.time.DayOfWeek;
import java.time.LocalDate;
import java.util.HashSet;
import java.util.List;
import java.util.stream.Collectors;

@Controller
public class VoivodeshipController {

    @Autowired
    private VoivodeshipRepository voivodeshipRepository;
    @Autowired
    private CountyRepository countyRepository;
    @Autowired
    private PostOfficeRepository postOfficeRepository;
    @Autowired
    private DaysRepository daysRepository;

    @RequestMapping(value = {"/w-{voivodeshipUrl}"}, method = RequestMethod.GET)
    public String countyInVoivodeshipList(Model model, @PathVariable("voivodeshipUrl") String voivodeshipUrl){
        final int NUMBER_OF_RANDOM_POST_OFFICES = 4;
        Voivodeship voivodeship = voivodeshipRepository.findFirstByNameUrl(voivodeshipUrl);
        List<County> countyList = countyRepository.findAllByVoivodeshipOrderByNameAsc(voivodeship);
        HashSet<PostOffice> allPostOfficeListByVoivodeship = postOfficeRepository.findAllByVoivodeship(voivodeship);
        HashSet<PostOffice> randomPostOfficeListByVoivodeship = allPostOfficeListByVoivodeship
                .stream()
                .limit(NUMBER_OF_RANDOM_POST_OFFICES)
                .collect(Collectors.toCollection(HashSet::new));
        LocalDate localDate = LocalDate.now();
        DayOfWeek today = localDate.getDayOfWeek();
        String todayNamePl = daysRepository.findFirstById((long) today.getValue()).getName();


        model.addAttribute("todayNamePl", todayNamePl);
        model.addAttribute("voivodeship", voivodeship);
        model.addAttribute("countyList", countyList);
        model.addAttribute("randomPostOfficeListBy", randomPostOfficeListByVoivodeship);
        return "voivodeship";
    }
}
