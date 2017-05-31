/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package reservation.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import reservation.entity.Chambre;
import reservation.service.ChambreServiceCRUD;
import reservation.service.HotelServiceCRUD;

/**
 *
 * @author formation
 */
@Controller
@RequestMapping(value = "/chambre")
public class ChambreController {
    
    @Autowired
    private ChambreServiceCRUD chambreService;
    
    @Autowired
    private HotelServiceCRUD hotelService;
    
    @RequestMapping(value = "/ajouter", method = RequestMethod.POST)
    public String ajouterPOST( @ModelAttribute("chambre") Chambre chambre ){

        // Ajout DB
        chambreService.save(chambre);
        
        // Redirection vers liste chambres
        return "redirect:/chambre/lister";
    }
    
    @RequestMapping(value = "/ajouter", method = RequestMethod.GET)
    public String ajouterGET(Model model){
        
        // Ajouter au modèle liste hotels
        model.addAttribute("hotels", hotelService.findAll());
        
        // Ajouter mon ModelAttribute ( = DTO ) au modèle
        model.addAttribute("chambre", new Chambre());
        
        // Renvoie JSP
        return "/chambre/ajouter.jsp";
    }
}
